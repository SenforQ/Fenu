
//: Declare String Begin

/*: "content" :*/
fileprivate let mainHeavyPath:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let mObserverPrepareTitle:String = "official timing valid appealjumpK"
fileprivate let main_treatCountMessage:String = "focus"

/*: "uploadUserHeaderPic" :*/
fileprivate let dream_analysisId:String = "UPL"
fileprivate let kLiveReportData:[Character] = ["o","a","d","U","s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let dreamSituationIdent:String = "truePflag have girl double total"
fileprivate let m_responseFormat:String = "uinmate"

/*: "yyyy-MM-dd" :*/
fileprivate let userEveryoneOmitUrl:[Character] = ["y","y","y","y","-","M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShrinkWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum PopupCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class ShrinkWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [PopupCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<PopupCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = ShrinkWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        faint()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension ShrinkWindowManager {
    //: func setObserver() {
    func faint() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.butte()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(viewDeclineShowDit), name: noti_dismissText, object: nil)
    }

    //: func setHomePopUpWindow() {
    func evaluateWindow() {
        // 默认模式, 男性, 未订阅
        //: if AdministratorThen.share.loginUserMode.jumpType == 0,
        if AdministratorThen.share.loginUserMode.jumpType == 0,
           //: AdministratorThen.share.appUserConfigMode.payWinType == 2,
           AdministratorThen.share.appUserConfigMode.payWinType == 2,
           //: AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue,
           AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue,
           //: AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue,
           AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue,
           //: AdministratorThen.share.loginUserMode.loungePlus == false {
           AdministratorThen.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(PopupCaseIterable.Web_Subscribe)
        }

        //: if  AdministratorThen.share.loginUserMode.showSignInPage && AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.loginUserMode.showSignInPage, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(PopupCaseIterable.sign_in)
        }

        //: if AdministratorThen.share.loginUserMode.isNaUser == false,
        if AdministratorThen.share.loginUserMode.isNaUser == false,
           //: AdministratorThen.share.appUserConfigMode.videoCover.count > 0,
           AdministratorThen.share.appUserConfigMode.videoCover.count > 0,
           //: AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue,
           AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue,
           //: AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
           AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(PopupCaseIterable.video_Cover)
        }

        //: if AdministratorThen.share.appUserConfigMode.showNewGuidance, AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appUserConfigMode.showNewGuidance, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(PopupCaseIterable.New_Guidance)
        }

        //: if AdministratorThen.share.appUserConfigMode.headPicRejectNotice.count > 0 && AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appUserConfigMode.headPicRejectNotice.count > 0, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: refuseViewData["content"] = AdministratorThen.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(String(mainHeavyPath))] = AdministratorThen.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(mObserverPrepareTitle.suffix(5)) + main_treatCountMessage.replacingOccurrences(of: "focus", with: "ey"))] = (dream_analysisId.lowercased() + String(kLiveReportData))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PopupCaseIterable.Attestation_Refuse)
        }

        //: if AdministratorThen.share.appUserConfigMode.realPicRejectNotice.count > 0 && AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appUserConfigMode.realPicRejectNotice.count > 0, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: refuseViewData["content"] = AdministratorThen.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(String(mainHeavyPath))] = AdministratorThen.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(mObserverPrepareTitle.suffix(5)) + main_treatCountMessage.replacingOccurrences(of: "focus", with: "ey"))] = (String(dreamSituationIdent.prefix(5)) + "ersonA" + m_responseFormat.replacingOccurrences(of: "inmate", with: "th"))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PopupCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func eon() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(PopupCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func recommendBody() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(PopupCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func pinLap() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(PopupCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func serious(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(String(mainHeavyPath))] = dic[(String(mainHeavyPath))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(mObserverPrepareTitle.suffix(5)) + main_treatCountMessage.replacingOccurrences(of: "focus", with: "ey"))] = dic[(String(mObserverPrepareTitle.suffix(5)) + main_treatCountMessage.replacingOccurrences(of: "focus", with: "ey"))] as? String
        //: guard TalkingSocketManager.shared.isFind == false else {
        guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(PopupCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func viewDeclineShowDit() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PopupCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func butte() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.cellType(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func cellType(type: PopupCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            DumpPushManager.share.anvil(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AsideUpView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.layOpen()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = PlopReactiveCompatible(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.leaf()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SpearheadUpView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.talkShow()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = RoundingErrorView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.failureSmall()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = noti_foundData.object(forKey: appPlainName)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.recoverBirth(date: Date(), dateFormat: (String(userEveryoneOmitUrl)))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                noti_foundData.set(today, forKey: appPlainName)
                //: DumpPushManager.share.func__pushToSubscribeAlert()
                DumpPushManager.share.underCharm()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = NativeView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.setViewData(dit: refuseViewData)
            view.cease(dit: refuseViewData)
            //: view.show()
            view.componentChannel()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ConsumerReactiveCompatible(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.shouldBusy()
        }
    }
}
