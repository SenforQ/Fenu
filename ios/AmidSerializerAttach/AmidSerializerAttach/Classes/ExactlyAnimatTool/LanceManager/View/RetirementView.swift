
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let m_delayValue:[UInt8] = [0xce,0xc9,0xce,0xd3,0x8f,0xc4,0xc8,0xc3,0xc2,0xd5,0x9d,0x8e,0x87,0xcf,0xc6,0xd4,0x87,0xc9,0xc8,0xd3,0x87,0xc5,0xc2,0xc2,0xc9,0x87,0xce,0xca,0xd7,0xcb,0xc2,0xca,0xc2,0xc9,0xd3,0xc2,0xc3]

private func scrapeUp(will num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "#45003A" :*/
fileprivate let dream_flagMsg:String = "#45003"
fileprivate let dreamMouthUrl:String = "he"

/*: "#2D0059" :*/
fileprivate let app_sparkIdent:[Character] = ["#","2","D","0","0","5","9"]

/*: "party_close_btn" :*/
fileprivate let noti_oppositeId:[Character] = ["p","a","r","t","y","_","c","l","o","s","e","_","b","t","n"]

/*: "btn_party_minimal_nor" :*/
fileprivate let app_roleUrl:[Character] = ["b","t","n","_","p","a","r","t","y","_","m"]
fileprivate let mReasonPath:[Character] = ["i","n","i","m","a","l","_","n","o","r"]

/*: "Minimal" :*/
fileprivate let dream_beData:String = "cost remindMinimal"

/*: "btn_party_quit_nor" :*/
fileprivate let mainTopFormat:String = "pad rate towerbtn_par"
fileprivate let m_atValue:String = "description drawing skirt succeedty_qui"

/*: "Quit" :*/
fileprivate let show_twentyText:String = "Quitsubmit admit fun"

/*: "btn_party_close_nor" :*/
fileprivate let k_providerIdent:String = "btn_pbegin your follow shared reader"
fileprivate let notiTitleStr:String = "my"
fileprivate let dream_pricePath:[Character] = ["s","e","_","n","o","r"]

/*: "Close" :*/
fileprivate let mBuryUrl:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let userSituationPath:[UInt8] = [0x10,0x3b,0x74,0x2d,0x3b,0x21,0x74,0x23,0x35,0x3a,0x20,0x74,0x20,0x3b,0x74,0x37,0x38,0x3b,0x27,0x31,0x74,0x20,0x3c,0x31,0x74,0x26,0x3b,0x3b,0x39,0x6b,0x74,0x15,0x32,0x20,0x31,0x26,0x74,0x37,0x38,0x3b,0x27,0x3d,0x3a,0x33,0x74,0x20,0x3c,0x31,0x74,0x26,0x3b,0x3b,0x39,0x78,0x74,0x35,0x38,0x38,0x74,0x21,0x27,0x31,0x26,0x27,0x74,0x23,0x3d,0x38,0x38,0x74,0x36,0x31,0x74,0x26,0x31,0x39,0x3b,0x22,0x31,0x30,0x74,0x32,0x26,0x3b,0x39,0x74,0x20,0x3c,0x31,0x74,0x26,0x3b,0x3b,0x39,0x7a]

private func justAbout(equity num: UInt8) -> UInt8 {
    return num ^ 84
}

/*: "Cancel" :*/
fileprivate let kElectHimValue:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RetirementView.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class RetirementView: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == AdministratorThen.share.loginUid)
    private let isAnchor = (String(LanceManager.doingResource().partyModel.streamerInfo.uid) == AdministratorThen.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        delayTranslation()
        //: setupSubViewsConstraint()
        archetypal()
        //: addNotifications()
        supplementNative()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: m_delayValue.map{scrapeUp(will: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (dream_flagMsg.capitalized + dreamMouthUrl.replacingOccurrences(of: "he", with: "A")))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(app_sparkIdent)))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(noti_oppositeId))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enablee), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(app_roleUrl) + String(mReasonPath))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(aboveFun), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.imitationClotheStatement(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(dream_beData.suffix(7))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(mainTopFormat.suffix(7)) + String(m_atValue.suffix(6)) + "t_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(suborn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.imitationClotheStatement(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(show_twentyText.prefix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(k_providerIdent.prefix(5)) + "arty_cl" + notiTitleStr.replacingOccurrences(of: "my", with: "o") + String(dream_pricePath))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(skirtNext), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.imitationClotheStatement(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(mBuryUrl)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension RetirementView {
    /// 展示视图
    //: func show() {
    func heroicShow() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: CreditsThen.getWindow().addSubview(self)
        CreditsThen.captain().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func enablee() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func aboveFun() {
        //: self.dismiss()
        self.enablee()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        LanceManager.doingResource().firstMini()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func suborn() {
        //: self.dismiss()
        self.enablee()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        LanceManager.doingResource().turnChoose()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func skirtNext() {
        //: let config = ShowAlertConfig()
        let config = GainGageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        GentleAlertShow.begNativeConfig(message: String(bytes: userSituationPath.map{justAbout(equity: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kElectHimValue)).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            LanceManager.doingResource().turnChoose()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            OnReqTool.rankCompletion(roomId: LanceManager.doingResource().partyModel.roomId)
            //: self.dismiss()
            self.enablee()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension RetirementView {
    /// 添加视图
    //: private func setupSubviews() {
    private func delayTranslation() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func archetypal() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(mNameKey + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((appMineMessage + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func supplementNative() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(enablee),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: k_featureMinePagePath,
                                               //: object: nil)
                                               object: nil)
    }
}
