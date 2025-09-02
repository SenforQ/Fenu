import 'package:flutter/material.dart';

class VoiceCallPage extends StatefulWidget {
  final String userName;
  final String userAvatar;
  final String? backgroundPhoto;

  const VoiceCallPage({
    Key? key,
    required this.userName,
    required this.userAvatar,
    this.backgroundPhoto,
  }) : super(key: key);

  @override
  State<VoiceCallPage> createState() => _VoiceCallPageState();
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  bool _isCalling = false;
  bool _isConnected = false;
  Duration _callDuration = Duration.zero;
  late Stream<Duration> _callTimer;

  @override
  void initState() {
    super.initState();
    _startCall();
  }

  void _startCall() {
    setState(() {
      _isCalling = true;
    });

    // 模拟呼叫过程
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isCalling = false;
          _isConnected = true;
        });
        _startCallTimer();
      }
    });
  }

  void _startCallTimer() {
    _callTimer = Stream.periodic(const Duration(seconds: 1), (i) => Duration(seconds: i));
    _callTimer.listen((duration) {
      if (mounted) {
        setState(() {
          _callDuration = duration;
        });
      }
    });
  }

  void _endCall() {
    Navigator.pop(context);
  }

  void _muteCall() {
    // TODO: 实现静音功能
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mute feature coming soon!'),
        backgroundColor: Colors.black,
      ),
    );
  }

  void _speakerToggle() {
    // TODO: 实现扬声器切换功能
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Speaker toggle feature coming soon!'),
        backgroundColor: Colors.black,
      ),
    );
  }

  void _cameraToggle() {
    // TODO: 实现摄像头切换功能
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Camera toggle feature coming soon!'),
        backgroundColor: Colors.black,
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: widget.backgroundPhoto != null
                ? DecorationImage(
                    image: AssetImage('assets/${widget.backgroundPhoto}'),
                    fit: BoxFit.cover,
                  )
                : null,
            gradient: widget.backgroundPhoto == null
                ? LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.grey[900]!,
                      Colors.black,
                    ],
                  )
                : null,
          ),
          child: Column(
            children: [

              const Spacer(),

              // 底部操作按钮
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  children: [
                                        // 挂断按钮
                    GestureDetector(
                      onTap: _endCall,
                      child: Image.asset(
                        'assets/call_video_20250902.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          // 如果图片加载失败，显示默认挂断按钮
                          return Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF3B30),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.call_end,
                              size: 50,
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 68),

                    // 功能按钮
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // 麦克风按钮
                        _buildFunctionButton(
                          icon: Icons.mic_off,
                          onPressed: _muteCall,
                        ),

                        const SizedBox(width: 63),

                        // 扬声器按钮
                        _buildFunctionButton(
                          icon: Icons.volume_up,
                          onPressed: _speakerToggle,
                        ),

                        const SizedBox(width: 63),

                        // 摄像头按钮
                        _buildFunctionButton(
                          icon: Icons.videocam,
                          onPressed: _cameraToggle,
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required Color backgroundColor,
    required VoidCallback onPressed,
    bool isMain = false,
  }) {
    return Container(
      width: isMain ? 80 : 60,
      height: isMain ? 80 : 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(isMain ? 40 : 30),
          child: Icon(
            icon,
            color: Colors.white,
            size: isMain ? 32 : 24,
          ),
        ),
      ),
    );
  }

  Widget _buildFunctionButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(20),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
