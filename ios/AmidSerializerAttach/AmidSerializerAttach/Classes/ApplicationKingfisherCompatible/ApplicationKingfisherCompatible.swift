
//: Declare String Begin

/*: "checkAndShowMaleInvitePopup_1" :*/
fileprivate let mCalendarIdent:[Character] = ["c","h","e","c","k","A","n","d","S"]
fileprivate let appHowName:String = "howMaauthorize average picture still faculty"
fileprivate let dreamBodyFormat:String = "food help tempttePop"

/*: "checkAndShowMaleInvitePopup_2" :*/
fileprivate let k_cornerPath:[Character] = ["c","h","e","c","k","A","n","d","S","h","o","w","M","a","l","e","I"]
fileprivate let noti_bossIdent:[Character] = ["n","v","i","t","e","P","o"]
fileprivate let mCareButtonFormat:String = "pup_2empty engagement golden"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ApplicationKingfisherCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

/// 男性邀请视频通话场景
//: let maleInviteCallSceneSEL_String_1 = "checkAndShowMaleInvitePopup_1"
let main_gameIdent = (String(mCalendarIdent) + String(appHowName.prefix(5)) + "leInvi" + String(dreamBodyFormat.suffix(5)) + "up_1")
//: let maleInviteCallSceneSEL_String_2 = "checkAndShowMaleInvitePopup_2"
let dream_dailyVoiceMsg = (String(k_cornerPath) + String(noti_bossIdent) + String(mCareButtonFormat.prefix(5)))

//: public class TalkingApplication: UIApplication {
public class ApplicationKingfisherCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false
    // 男性邀请通话弹窗
    //: private var inviteCallView: MaleInviteCallView?
    private var inviteCallView: ViewBubbleReactiveCompatible?
    //: private var callUid = ""
    private var callUid = ""
    //: private var callHeadPic = ""
    private var callHeadPic = ""

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        // 女性用户busy状态上报
        //: femaleBusyStatusReport()
        minCharacter()
        // 男性用户启动邀请弹窗逻辑
        //: showMaleInviteCallView_1()
        futurism1()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension ApplicationKingfisherCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func minCharacter() {
        //: destroyTimer()
        wipeOutTop()
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue else { return }
        //: guard AdministratorThen.share.loginUid.count > 0 else { return }
        guard AdministratorThen.share.loginUid.count > 0 else { return }
        //: guard AdministratorThen.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard AdministratorThen.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isFind && !TalkingSocketManager.shared.isCalling else { return }
        guard !TapBecauseLiveManager.resolutionShared().isLive, !AdviceLandscapeReactiveCompatible.shared.isFind, !AdviceLandscapeReactiveCompatible.shared.isCalling else { return }
        //: if AdministratorThen.share.loginUserMode.videoAuth == "-1",
        if AdministratorThen.share.loginUserMode.videoAuth == "-1",
           //: AdministratorThen.share.loginUserMode.voiceAuth == "-1",
           AdministratorThen.share.loginUserMode.voiceAuth == "-1",
           //: AdministratorThen.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           AdministratorThen.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            oppress(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(AdministratorThen.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(AdministratorThen.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.oppress(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            oppress(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func borderPermission() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        wipeOutTop()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func oppress(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        MeThen.runningUp(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.minCharacter()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func wipeOutTop() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}

// MARK: - 【男性用户邀请通话弹窗监听】

//: extension TalkingApplication {
extension ApplicationKingfisherCompatible {
    /// 场景一：停留在Hot页面、消息列表、我的页面 无任何操作
    //: func showMaleInviteCallView_1() {
    func futurism1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard descriptionPopup() else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_1)
        sodalist(selectorString: main_gameIdent)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_1)
        resolutionSmall(selectorString: main_gameIdent)
    }

    /// 场景一：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_1() {
    @objc private func checkAndShowMaleInvitePopup_1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard descriptionPopup() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = springEquinox() else { return }
        //: if vc is TalkingSocialViewController ||
        if vc is TwoObjectProtocol ||
            //: vc is TalkingMessageViewController ||
            vc is MessageNavigationDelegate ||
            //: vc is TalkingMeViewController {
            vc is QuickReactiveCompatible
        {
            //: showMaleInviteCallView()
            distinction()
        }
    }

    /// 场景二/三：停留在某主播的动态详情页 或 个人主页（不管是否有操作）
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - headPic: 头像
    //: func showMaleInviteCallView_2(uid: String, headPic: String) {
    func smallAlso(uid: String, headPic: String) {
        //: guard check_showMaleInvitePopup() else { return }
        guard descriptionPopup() else { return }
        //: guard uid != AdministratorThen.share.loginUserMode.userID else { return }
        guard uid != AdministratorThen.share.loginUserMode.userID else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_2)
        sodalist(selectorString: dream_dailyVoiceMsg)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_2)
        resolutionSmall(selectorString: dream_dailyVoiceMsg)
        //: self.callUid = uid
        self.callUid = uid
        //: self.callHeadPic = headPic
        self.callHeadPic = headPic
    }

    /// 场景二/三：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_2() {
    @objc private func checkAndShowMaleInvitePopup_2() {
        //: guard check_showMaleInvitePopup() else { return }
        guard descriptionPopup() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = springEquinox() else { return }
        //: if vc is TalkingMomentDetailVC || vc is TalkingUserDetailViewController {
        if vc is DetailFlushViewDelegate || vc is PoorRecognizerDelegate {
            //: showMaleInviteCallView()
            distinction()
        }
    }

    /// 展示男性邀请弹窗
    //: private func showMaleInviteCallView() {
    private func distinction() {
        //: inviteCallView = MaleInviteCallView()
        inviteCallView = ViewBubbleReactiveCompatible()
        //: inviteCallView?.show(uid: self.callUid, headPic: self.callHeadPic)
        inviteCallView?.undercoverOperation(uid: self.callUid, headPic: self.callHeadPic)
        //: inviteCallView?.dismissBlock = { [weak self] in
        inviteCallView?.dismissBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.clearStatus()
            self.crunch()
        }
    }

    /// 判断是否应该展示男性邀请弹窗
    //: private func check_showMaleInvitePopup() -> Bool {
    private func descriptionPopup() -> Bool {
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue,
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue,
              //: AdministratorThen.share.appUserConfigMode.inviteCall > 0,
              AdministratorThen.share.appUserConfigMode.inviteCall > 0,
              //: !TalkingSocketManager.shared.isFind,
              !AdviceLandscapeReactiveCompatible.shared.isFind,
              //: !TalkingSocketManager.shared.isCalling,
              !AdviceLandscapeReactiveCompatible.shared.isCalling,
              //: inviteCallView == nil else {
              inviteCallView == nil
        else {
            //: return false
            return false
        }

        //: return true
        return true
    }

    /// 清除状态
    //: private func clearStatus() {
    private func crunch() {
        //: self.inviteCallView = nil
        self.inviteCallView = nil
        //: self.callUid = ""
        self.callUid = ""
        //: self.callHeadPic = ""
        self.callHeadPic = ""
    }

    /// 取消定时器
    /// - Parameter aSelector: 方法
    //: func cancelTimer(selectorString: String) {
    func sodalist(selectorString: String) {
        //: self.clearStatus()
        self.crunch()
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: Selector(selectorString),
                                               selector: Selector(selectorString),
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启定时器
    /// - Parameter aSelector: 方法
    //: private func performTimer(selectorString: String) {
    private func resolutionSmall(selectorString: String) {
        //: perform(Selector(selectorString),
        perform(Selector(selectorString),
                //: with: nil,
                with: nil,
                //: afterDelay: TimeInterval(AdministratorThen.share.appUserConfigMode.inviteCall))
                afterDelay: TimeInterval(AdministratorThen.share.appUserConfigMode.inviteCall))
    }
}
