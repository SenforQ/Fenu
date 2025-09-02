import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'voice_call_page.dart';

class ChatPage extends StatefulWidget {
  final String userName; // 对方（角色）名称
  final String userAvatar; // 对方头像（资产路径）
  final String? backgroundPhoto; // 背景图片

  const ChatPage({
    super.key, 
    required this.userName, 
    required this.userAvatar,
    this.backgroundPhoto,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _inputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<_ChatMessage> _messages = [];
  bool _sending = false;

  // 本机用户信息（自己）
  String _selfAvatarPath = 'assets/user_default_icon_20250901.png';
  bool _selfAvatarIsLocal = false;

  late final String _convKey;
  
  // 智谱AI配置
  static const String _apiKey = '9fd053d2174b493390b9fa186796d5c4.zk4jh85MvKozzqRy';
  static const String _apiUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';

  @override
  void initState() {
    super.initState();
    _convKey = _conversationKey(widget.userName, widget.userAvatar);
    _initUser();
    _loadHistory();
  }

  String _conversationKey(String userName, String userAvatar) {
    return 'chat_${userName}_${userAvatar}';
  }

  Future<void> _loadHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyJson = prefs.getString(_convKey);
    
    if (!mounted) return;
    setState(() {
      if (historyJson != null && historyJson.isNotEmpty) {
        final List<dynamic> history = json.decode(historyJson);
        _messages.addAll(history.map((m) => _ChatMessage(role: m['role']!, content: m['content']!)));
      } else {
        // 新会话欢迎语
        _messages.add(_ChatMessage(role: 'assistant', content: "Hi! I'm ${widget.userName}. How can I help you today?"));
      }
    });
    _scrollToBottomDeferred();
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    final toSave = _messages.map((m) => {'role': m.role, 'content': m.content}).toList();
    await prefs.setString(_convKey, json.encode(toSave));
  }

  Future<void> _initUser() async {
    // 这里可以添加获取用户信息的逻辑
    // 目前使用默认头像
    if (!mounted) return;
    setState(() {
      _selfAvatarPath = 'assets/user_default_icon_20250901.png';
      _selfAvatarIsLocal = false;
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final text = _inputController.text.trim();
    if (text.isEmpty || _sending) return;
    
    setState(() {
      _sending = true;
      _messages.add(_ChatMessage(role: 'user', content: text));
      _inputController.clear();
    });
    _scrollToBottomDeferred();
    await _persist();

    try {
      // 调用智谱AI API
      final reply = await _callZhipuAI(text);
      
      if (!mounted) return;
      setState(() {
        _messages.add(_ChatMessage(role: 'assistant', content: reply));
        _sending = false;
      });
      _scrollToBottomDeferred();
      await _persist();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _messages.add(_ChatMessage(role: 'assistant', content: 'Sorry, I encountered an error. Please try again.'));
        _sending = false;
      });
      _scrollToBottomDeferred();
      await _persist();
    }
  }

  Future<String> _callZhipuAI(String userMessage) async {
    // 构建消息历史
    final List<Map<String, String>> messages = [
      {
        'role': 'system',
        'content': 'You are ${widget.userName}, a helpful travel and camping enthusiast. Always reply in English. Be friendly, enthusiastic about outdoor activities, and helpful with travel advice.'
      },
      for (final m in _messages) {'role': m.role, 'content': m.content},
    ];

    final requestBody = {
      'model': 'glm-4-flash',
      'messages': messages,
      'temperature': 0.7,
      'max_tokens': 1000,
    };

    final response = await http.post(
      Uri.parse(_apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      },
      body: json.encode(requestBody),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData['choices'][0]['message']['content'] ?? 'Sorry, I could not generate a response.';
    } else {
      throw Exception('API request failed with status: ${response.statusCode}');
    }
  }

  void _scrollToBottomDeferred() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!mounted) return;
      if (_scrollController.positions.isEmpty) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 80,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(widget.userName),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        foregroundColor: const Color(0xFF000000),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final m = _messages[index];
                  final isUser = m.role == 'user';
                  return _buildMessageRow(isUser: isUser, text: m.content);
                },
              ),
            ),
            _buildInputBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageRow({required bool isUser, required String text}) {
    final bubble = Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.72,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: isUser ? const Color(0xFFFE573D) : const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isUser ? Colors.white : const Color(0xFF222222),
          fontSize: 15,
          height: 1.4,
        ),
      ),
    );

    final avatar = _buildAvatar(isUser: isUser);

    return Row(
      mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: isUser
          ? [Expanded(child: Align(alignment: Alignment.centerRight, child: bubble)), const SizedBox(width: 8), avatar]
          : [avatar, const SizedBox(width: 8), Expanded(child: Align(alignment: Alignment.centerLeft, child: bubble))],
    );
  }

  Widget _buildAvatar({required bool isUser}) {
    final double size = 36;
    if (isUser) {
      // 自己的头像
      if (_selfAvatarIsLocal) {
        return ClipOval(
          child: Image.file(
            File(_selfAvatarPath),
            width: size,
            height: size,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => _fallbackAvatar(size),
          ),
        );
      } else {
        return ClipOval(
          child: Image.asset(
            _selfAvatarPath.isNotEmpty ? _selfAvatarPath : 'assets/user_default_icon_20250901.png',
            width: size,
            height: size,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => _fallbackAvatar(size),
          ),
        );
      }
    } else {
      // 对方（角色）头像
      return ClipOval(
        child: Image.asset(
          widget.userAvatar,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => _fallbackAvatar(size),
        ),
      );
    }
  }

  Widget _fallbackAvatar(double size) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(color: Color(0xFFF5F5F5), shape: BoxShape.circle),
      alignment: Alignment.center,
      child: const Icon(Icons.person, color: Color(0xFFCCCCCC), size: 18),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        border: Border(top: BorderSide(color: Color(0xFFE0E0E0), width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _inputController,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => _send(),
              decoration: const InputDecoration(
                hintText: 'Send a message...',
                border: OutlineInputBorder(),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 44,
            child: ElevatedButton(
              onPressed: _sending ? null : _send,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFE573D),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: _sending
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                    )
                  : const Text('Send'),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 44,
            width: 44,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VoiceCallPage(
                      userName: widget.userName,
                      userAvatar: widget.userAvatar,
                      backgroundPhoto: widget.backgroundPhoto,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFE573D),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                padding: EdgeInsets.zero,
              ),
              child: const Icon(Icons.call, size: 20),
            ),
          )
        ],
      ),
    );
  }
}

class _ChatMessage {
  final String role; // 'user' | 'assistant'
  final String content;
  const _ChatMessage({required this.role, required this.content});
}
