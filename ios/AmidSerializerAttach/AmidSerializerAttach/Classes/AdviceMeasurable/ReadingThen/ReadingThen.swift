
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_pairLifeIdent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Reply" :*/
fileprivate let m_maximumToolContent:String = "each anniversary feeReply"

/*: "#F95151" :*/
fileprivate let kMarriedFormat:[Character] = ["#","F","9","5","1","5","1"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadingThen.swift
//  AbroadTalking
//
//  Created by young on 2023/5/30.
//

//: import UIKit
import UIKit

//: let TalkingMessageNotificationView_H = (StatusBarHeight+80.0)
let appExploreStr = (mNameKey + 80.0)
//: class TalkingMessageNotificationView: UIView {
class ReadingThen: UIView {
    //: var startDismissBlock: ((_ model: TalkingConversationModel) -> Void)?
    var startDismissBlock: ((_ model: ModelThen) -> Void)? // 开始移除视图Block
    //: var finishDismissBlock: ((_ view: TalkingMessageNotificationView) -> Void)?
    var finishDismissBlock: ((_ view: ReadingThen) -> Void)? // 完成移除视图Block
    //: private var currModel = TalkingConversationModel()
    private var currModel = ModelThen()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        half()
        //: setupSubViewsConstraint()
        cassavaCreate()
        //: bindInteraction()
        yesterday()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_pairLifeIdent.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = .zero
        v.layer.shadowOffset = .zero
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: return v
        return v
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 40/2
        imageView.layer.cornerRadius = 40 / 2
        //: imageView.layer.masksToBounds = true
        imageView.layer.masksToBounds = true
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nickNameLabel: UILabel = {
    private lazy var nickNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 15)
        label.font = .afterDisable(type: .Medium, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .manualColor()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var msgShowLabel: UILabel = {
    private lazy var msgShowLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .afterDisable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .portion()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var replyBtn: UIButton = {
    private lazy var replyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = .afterDisable(type: .Medium, fontSize: 15)
        //: btn.setTitle("Reply".localized, for: .normal)
        btn.setTitle((String(m_maximumToolContent.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#F95151"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kMarriedFormat))), for: .normal)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMessageNotificationView {
extension ReadingThen {
    /// 展示视图，5s后自动移除
    //: func show(_ model: TalkingConversationModel?) {
    func pingShow(_ model: ModelThen?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: currModel = model
        currModel = model
        //: refreshView()
        minView()

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: CreditsThen.getWindow().addSubview(self)
            CreditsThen.captain().addSubview(self)
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: self.frame.origin.y = 0
                self.frame.origin.y = 0
                //: } completion: { _ in
            } completion: { _ in
                //: DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    //: self.dismiss(needAlpha: false)
                    self.need(needAlpha: false)
                }
            }
        }
    }

    /// 移除视图
    //: func dismiss(needAlpha: Bool = true) {
    func need(needAlpha: Bool = true) {
        //: if startDismissBlock != nil {
        if startDismissBlock != nil {
            //: self.startDismissBlock!(currModel)
            self.startDismissBlock!(currModel)
        }

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: if needAlpha {
                if needAlpha {
                    //: self.alpha = 0
                    self.alpha = 0
                    //: } else {
                } else {
                    //: self.frame.origin.y = -TalkingMessageNotificationView_H
                    self.frame.origin.y = -appExploreStr
                }
                //: } completion: { _ in
            } completion: { _ in
                //: if self.finishDismissBlock != nil {
                if self.finishDismissBlock != nil {
                    //: self.finishDismissBlock!(self)
                    self.finishDismissBlock!(self)
                }
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }

    /// 点击手势
    //: @objc private func tapGestureEvent() {
    @objc private func spreadSuite() {
        //: TalkingMessageNotificationManager.shared.clearData()
        SuiteNotificationManager.shared.clearCutAggregation()
        // 在音视频界面，缩小通话窗口
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = springEquinox() else { return }
        //: if currentVC.isKind(of: TalkingVoiceChatViewController.self) {
        if currentVC.isKind(of: FuturismViewDelegate.self) {
            //: (currentVC as! TalkingVoiceChatViewController).interactionView_shouldDisplayMiniWindow()
            (currentVC as! FuturismViewDelegate).titleWarning()
            //: } else if currentVC.isKind(of: TalkingVideoChatViewController.self) {
        } else if currentVC.isKind(of: ExtentRecognizerDelegate.self) {
            //: (currentVC as! TalkingVideoChatViewController).interactionView_shouldDisplayMiniWindow()
            (currentVC as! ExtentRecognizerDelegate).socialMp()
        }
        // 跳转聊天界面
        //: self.dismiss()
        self.need()
        //: if currModel.chatType == .service {
        if currModel.chatType == .service {
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            DumpPushManager.share.anvil(webViewType: .FAQ)
            //: } else {
        } else {
            //: DumpPushManager.share.func__pushToPriveteChatVC(chatID: currModel.targetId)
            DumpPushManager.share.estimatedHave(chatID: currModel.targetId)
        }
    }

    /// 滑动手势
    //: @objc private func swipeGestureEvent(gesture: UISwipeGestureRecognizer) {
    @objc private func applyBlind(gesture: UISwipeGestureRecognizer) {
        //: if gesture.direction == .up {
        if gesture.direction == .up {
            //: TalkingMessageNotificationManager.shared.clearData()
            SuiteNotificationManager.shared.clearCutAggregation()
            //: self.dismiss(needAlpha: false)
            self.need(needAlpha: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageNotificationView {
extension ReadingThen {
    /// 刷新视图
    //: func refreshView() {
    func minView() {
        //: if let userInfo = currModel.gj_userInfo {
        if let userInfo = currModel.gj_userInfo {
            //: nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname:currModel.userID
            nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname : currModel.userID
            //: headImgView.setUrlImage(urlStr: userInfo.headPic, placeImg: UIImage.placeHolderImage(sex: userInfo.sex))
            headImgView.refreshHistory(urlStr: userInfo.headPic, placeImg: UIImage.pairControl(sex: userInfo.sex))
            //: if !userInfo.headPicFrame.isEmptyString {
            if !userInfo.headPicFrame.isEmptyString {
                //: iconBorder.isHidden = false
                iconBorder.isHidden = false
                //: iconBorder.setHeadFrameUrlImage(urlStr: userInfo.headPicFrame)
                iconBorder.amTotaleraction(urlStr: userInfo.headPicFrame)
                //: } else {
            } else {
                //: iconBorder.isHidden = true
                iconBorder.isHidden = true
            }
            //: } else {
        } else {
            //: nickNameLabel.text = currModel.userID
            nickNameLabel.text = currModel.userID
            //: headImgView.image = UIImage.placeSquareBigImgBanner()
            headImgView.image = UIImage.dirt()
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: msgShowLabel.attributedText = TalkingChatListTableCell.handleShowC2CDetailTextOfMessage(model: currModel)
        msgShowLabel.attributedText = PatentViewCell.fullPhaseOfTheMoon(model: currModel)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func half() {
        //: self.frame = CGRect(x: 0, y: -TalkingMessageNotificationView_H, width: ScreenWidth, height: TalkingMessageNotificationView_H)
        self.frame = CGRect(x: 0, y: -appExploreStr, width: noti_senseContent, height: appExploreStr)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(shadowView)
        self.addSubview(shadowView)
        //: shadowView.addSubview(whiteBgView)
        shadowView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(replyBtn)
        whiteBgView.addSubview(replyBtn)
        //: whiteBgView.addSubview(headImgView)
        whiteBgView.addSubview(headImgView)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nickNameLabel)
        whiteBgView.addSubview(nickNameLabel)
        //: whiteBgView.addSubview(msgShowLabel)
        whiteBgView.addSubview(msgShowLabel)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cassavaCreate() {
        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(mNameKey + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(60)
            make.height.equalTo(60)
        }
        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: replyBtn.snp.makeConstraints { make in
        replyBtn.snp.makeConstraints { make in
            //: make.top.trailing.bottom.equalToSuperview()
            make.top.trailing.bottom.equalToSuperview()
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(10)
            make.leading.top.equalTo(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.center.equalTo(headImgView)
            make.center.equalTo(headImgView)
            //: make.width.height.equalTo(49.5)
            make.width.height.equalTo(49.5)
        }
        //: nickNameLabel.snp.makeConstraints { make in
        nickNameLabel.snp.makeConstraints { make in
            //: make.top.equalTo(headImgView)
            make.top.equalTo(headImgView)
            //: make.leading.equalTo(headImgView.snp.trailing).offset(10)
            make.leading.equalTo(headImgView.snp.trailing).offset(10)
            //: make.trailing.equalTo(replyBtn.snp.leading).offset(-4)
            make.trailing.equalTo(replyBtn.snp.leading).offset(-4)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: msgShowLabel.snp.makeConstraints { make in
        msgShowLabel.snp.makeConstraints { make in
            //: make.leading.trailing.height.equalTo(nickNameLabel)
            make.leading.trailing.height.equalTo(nickNameLabel)
            //: make.bottom.equalTo(headImgView)
            make.bottom.equalTo(headImgView)
        }
    }

    /// 绑定
    //: private func bindInteraction() {
    private func yesterday() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureEvent))
        let tap = UITapGestureRecognizer(target: self, action: #selector(spreadSuite))
        //: self.addGestureRecognizer(tap)
        self.addGestureRecognizer(tap)

        //: let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureEvent))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(applyBlind))
        //: swipe.direction = .up
        swipe.direction = .up
        //: self.addGestureRecognizer(swipe)
        self.addGestureRecognizer(swipe)
    }
}
