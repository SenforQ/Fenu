
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let noti_fastId:[Character] = ["P","e","r","s","o","n","a","l"," ","i"]
fileprivate let user_handData:[Character] = ["n","f","o"]
fileprivate let dream_replyStr:[Character] = ["r","m","a","t","i","o","n"]

/*: "authPic" :*/
fileprivate let dreamBusyPanelPath:[Character] = ["a","u","t","h","P","i","c"]

/*: "Face verification" :*/
fileprivate let notiPoKey:String = "dominant acceptFace "
fileprivate let mPeaValue:String = "edgeerif"

/*: "icon_zc_userconver" :*/
fileprivate let showStreamOrangeId:String = "icon_zgive every dit processor"
fileprivate let showApplicationTapStr:[Character] = ["c","_","u","s","e","r","c","o","n","v","e","r"]

/*: "Verify now" :*/
fileprivate let appHeCeremonyId:String = "guard banVerif"
fileprivate let appUsedValue:[Character] = ["y"," ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let kWhenName:String = "tight annual#4A89F3"

/*: "Finish" :*/
fileprivate let m_seatValue:String = "Finishsince read bring"

/*: "#8C7AFF" :*/
fileprivate let app_exceptionContent:String = "bar sunlight fence feed#8C7A"
fileprivate let mOppositeIdent:String = "ff"

/*: "Skip" :*/
fileprivate let showBlankPath:String = "appear aboutSkip"

/*: "icon_successfylly" :*/
fileprivate let show_acquireGageContent:String = "icon_sfield supportive professional trace dismiss"
fileprivate let notiTravelMsg:String = "FYLLY"

/*: "Submitted successfully" :*/
fileprivate let kExampleKey:String = "Submitvideo left"
fileprivate let showMassiveValue:String = "learncce"

/*: "#2ED180" :*/
fileprivate let userBeginName:[Character] = ["#","2","E","D","1","8","0"]

/*: "male" :*/
fileprivate let noti_kindWaveNationalPath:[UInt8] = [0xd4,0xd8,0xd5,0xdc]

private func performTail(dream num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "female" :*/
fileprivate let appItsMsg:String = "frepresentationmalrepresentation"

/*: "RegisterSuccess" :*/
fileprivate let main_charmValue:String = "progress floatRegist"
fileprivate let m_itGiftPath:[Character] = ["e","r"]
fileprivate let notiEarlyMsg:String = "glass lackSuccess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PosterLogReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class PosterLogReactiveCompatible: FlexibleViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        gratedOp(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(noti_fastId) + String(user_handData) + String(dream_replyStr)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.info()
        //: self.setupSubViewsConstraint()
        self.bindConstraint()

        //: if !AdministratorThen.share.appConfigMode.skipInputInviteCode {
        if !AdministratorThen.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if AdministratorThen.share.userFillInfoMode.authImage != nil {
        if AdministratorThen.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = AdministratorThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(dreamBusyPanelPath))] = AdministratorThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.stop()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .manualColor()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.afterDisable(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(notiPoKey.suffix(5)) + mPeaValue.replacingOccurrences(of: "edge", with: "v") + "ication").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.BundleImageNamed(name: "icon_zc_userconver")
        imagv.image = UIImage.scribeNumber(name: (String(showStreamOrangeId.prefix(6)) + String(showApplicationTapStr)))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(on), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(appHeCeremonyId.suffix(5)) + String(appUsedValue)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(kWhenName.suffix(7))))!, .font: UIFont.afterDisable(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(m_seatValue.prefix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.tabOn(colors: UIColor.printColor(), size: CGSize(width: noti_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hostError(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(app_exceptionContent.suffix(5)) + mOppositeIdent.uppercased())), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(showBlankPath.suffix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(medal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension PosterLogReactiveCompatible {
    //: func setConverView() {
    func stop() {
        //: self.converImag.image = UIImage.BundleImageNamed(name: "icon_successfylly")
        self.converImag.image = UIImage.scribeNumber(name: (String(show_acquireGageContent.prefix(6)) + "uccess" + notiTravelMsg.lowercased()))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(kExampleKey.prefix(6)) + "ted s" + showMassiveValue.replacingOccurrences(of: "learn", with: "u") + "ssfully").localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(userBeginName)))!, .font: UIFont.afterDisable(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension PosterLogReactiveCompatible {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func golden() {
        //: super.naviPopback()
        super.golden()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(show_warningValue)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_kindWaveNationalPath.map{performTail(dream: $0)}, encoding: .utf8)! : (appItsMsg.replacingOccurrences(of: "representation", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func on() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(showPointPackageMsg)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_kindWaveNationalPath.map{performTail(dream: $0)}, encoding: .utf8)! : (appItsMsg.replacingOccurrences(of: "representation", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = NonsensicalityThen()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: AdministratorThen.share.userFillInfoMode.authImage = image
            AdministratorThen.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(dreamBusyPanelPath))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.stop()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func medal() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(m_cornerTurnTitle)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_kindWaveNationalPath.map{performTail(dream: $0)}, encoding: .utf8)! : (appItsMsg.replacingOccurrences(of: "representation", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(dreamBusyPanelPath)))
        //: finishBtnClick(isSkip: true)
        hostError(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func hostError(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(main_styleData)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_kindWaveNationalPath.map{performTail(dream: $0)}, encoding: .utf8)! : (appItsMsg.replacingOccurrences(of: "representation", with: "e")))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            k_hugeName.hour(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        InviteeRequestTool.until(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: dream_lessMessage, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                WingAdjustManager.share.addExposureKey(key: (String(main_charmValue.suffix(6)) + String(m_itGiftPath) + String(notiEarlyMsg.suffix(7))))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                GatherJawAnalyticsManager.share.earthyGroupAction(name: (String(main_charmValue.suffix(6)) + String(m_itGiftPath) + String(notiEarlyMsg.suffix(7))))

                //: if AdministratorThen.share.loginUserMode.remindBindEmail == true {
                if AdministratorThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: DumpPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        DumpPushManager.share.limitWith(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension PosterLogReactiveCompatible {
    //: func setupSubviews() {
    func info() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func bindConstraint() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
