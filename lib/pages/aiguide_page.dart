import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class _ChatMessage {
  final String role; // 'user' | 'assistant'
  final String content;
  const _ChatMessage({required this.role, required this.content});
}

class AiGuidePage extends StatefulWidget {
  const AiGuidePage({super.key});

  @override
  State<AiGuidePage> createState() => _AiGuidePageState();
}

class _AiGuidePageState extends State<AiGuidePage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _inputController = TextEditingController();
  final List<_ChatMessage> _messages = [];
  bool _isInitialized = false;
  bool _sending = false;
  final Map<String, String> _options = {
    '1': 'How to set up a tent?',
    '2': 'What to do when in danger?',
    '3': 'What things need to be prepared for camping?',
  };
  static const String _chatKey = 'ai_guide_chat';

  @override
  void initState() {
    super.initState();
    _loadChatHistory();
  }

  Future<void> _loadChatHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyJson = prefs.getString(_chatKey);
    
    if (!mounted) return;
    
    setState(() {
      if (historyJson != null && historyJson.isNotEmpty) {
        final List<dynamic> history = json.decode(historyJson);
        _messages.addAll(history.map((m) => _ChatMessage(role: m['role']!, content: m['content']!)));
      } else {
        // 添加欢迎消息
        _messages.add(_ChatMessage(
          role: 'assistant',
          content: "Hi! I'm your AI Camping Guide. What camping knowledge would you like to learn?",
        ));
      }
      _isInitialized = true;
    });
    _scrollToBottom();
  }

  Future<void> _saveChatHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final toSave = _messages.map((m) => {'role': m.role, 'content': m.content}).toList();
    await prefs.setString(_chatKey, json.encode(toSave));
  }

  void _onOptionTap(String optionKey) {
    final optionText = _options[optionKey] ?? '';
    
    // 添加用户消息
    setState(() {
      _messages.add(_ChatMessage(role: 'user', content: optionText));
    });
    _scrollToBottom();
    _saveChatHistory();

    // 模拟AI回复（稍后可以接入真实AI）
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _messages.add(_ChatMessage(
          role: 'assistant',
          content: 'Great question! Let me help you with that. $optionText This is a very important topic for campers.',
        ));
      });
      _scrollToBottom();
      _saveChatHistory();
    });
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.positions.isNotEmpty) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage() async {
    final text = _inputController.text.trim();
    if (text.isEmpty || _sending) return;
    
    setState(() {
      _sending = true;
      _messages.add(_ChatMessage(role: 'user', content: text));
      _inputController.clear();
    });
    _scrollToBottom();
    await _saveChatHistory();

    // 模拟AI回复（稍后可以接入真实AI）
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _messages.add(_ChatMessage(
          role: 'assistant',
          content: 'Thank you for your question: "$text". I am here to help you with all your camping needs!',
        ));
        _sending = false;
      });
      _scrollToBottom();
      _saveChatHistory();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final tabBarHeight = 80;
    final viewHeight = screenHeight - tabBarHeight - 250;
    
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF9),
      body: Stack(
        children: [
          // 背景图片
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/aiguide_bg.webp',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          // 聊天区域
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              height: viewHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  // 聊天消息列表
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: _messages.length + (_isInitialized && _messages.length == 1 ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index < _messages.length) {
                          final message = _messages[index];
                          return _buildMessageRow(message, screenWidth);
                        } else {
                          // 显示选项按钮
                          return _buildOptionsRow(screenWidth);
                        }
                      },
                    ),
                  ),
                  // 输入栏
                  _buildInputBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageRow(_ChatMessage message, double screenWidth) {
    final isUser = message.role == 'user';
    
    // 构建消息气泡
    final bubble = Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth * 0.72,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: isUser ? const Color(0xFF4CAF50) : const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        message.content,
        style: TextStyle(
          color: isUser ? Colors.white : const Color(0xFF222222),
          fontSize: 15,
          height: 1.4,
        ),
      ),
    );

    // 构建头像
    final avatar = _buildAvatar(isUser: isUser);

    if (isUser) {
      // 用户消息：头像在右
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Align(alignment: Alignment.centerRight, child: bubble)),
            const SizedBox(width: 8),
            avatar,
          ],
        ),
      );
    } else {
      // AI消息：头像在左
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar,
            const SizedBox(width: 8),
            Expanded(child: Align(alignment: Alignment.centerLeft, child: bubble)),
          ],
        ),
      );
    }
  }

  Widget _buildAvatar({required bool isUser}) {
    final double size = 36;
    
    if (isUser) {
      // 用户默认头像
      return ClipOval(
        child: Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: Color(0xFF4CAF50),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
            size: 20,
          ),
        ),
      );
    } else {
      // AI头像
      return ClipOval(
        child: Image.asset(
          'assets/ai_robot_icon.webp',
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
      child: const Icon(Icons.psychology, color: Color(0xFFCCCCCC), size: 18),
    );
  }

  // 构建选项行
  Widget _buildOptionsRow(double screenWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final entry in _options.entries)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: GestureDetector(
                onTap: () => _onOptionTap(entry.key),
                child: Container(
                  width: screenWidth * 0.72,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '${entry.key}.',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          entry.value,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // 构建输入栏
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
              onSubmitted: (_) => _sendMessage(),
              decoration: const InputDecoration(
                hintText: 'Type your message...',
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
              onPressed: _sending ? null : _sendMessage,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
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
        ],
      ),
    );
  }
}
