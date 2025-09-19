
//: Declare String Begin

/*: "dist/loungePlus" :*/
fileprivate let main_howeverStr:[Character] = ["d","i","s"]
fileprivate let dreamChooseFormat:String = "cast tun called of itemt/lou"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let userToolValue:[Character] = ["m","f","/","f","r","e","e","C","a","l","l","/","g","e"]
fileprivate let mDirectTitle:String = "determine second time twenty exporttVide"

/*: "fromType" :*/
fileprivate let main_authorizeIdent:[UInt8] = [0x65,0x70,0x79,0x54,0x6d,0x6f,0x72,0x66]

/*: "videoId" :*/
fileprivate let mainFollowingText:[Character] = ["v","i","d","e","o","I"]
fileprivate let appClickTitle:String = "D"

/*: "uid" :*/
fileprivate let dreamTimingIdent:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let mEquityKey:[Character] = ["t","y","p","e"]

/*: "logId" :*/
fileprivate let noti_exampleId:[Character] = ["l","o","g","I","d"]

/*: "duration" :*/
fileprivate let notiCheekValue:[Character] = ["d","u","r"]
fileprivate let m_reverseMessage:[Character] = ["a","t","i","o","n"]

/*: "stopUid" :*/
fileprivate let showReportTitle:String = "event house tempt varstopUid"

/*: "mf/freeCall/operation" :*/
fileprivate let app_anyoneKey:String = "s harvest scanmf/free"
fileprivate let appOrdinaryUrl:[Character] = ["C","a","l","l","/","o","p","e","r","a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class TapThen: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = FireLiteralModelType()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = TapThen()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(effectively),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: appVoiceUnderText,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension TapThen {
    //: private func distroryNotif() {
    private func probability() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func recent() {
        //: guard AdministratorThen.share.loginUserMode.callPopupSetting != "0,0" else {
        guard AdministratorThen.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            probability()
            //: return
            return
        }
        //: let arr = AdministratorThen.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = AdministratorThen.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.tire()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(flagStream),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: dream_tableUrl,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func qualityBass() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(tire), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func traffic() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if springEquinox()?.isKind(of: AsideViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = springEquinox() as! AsideViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(ConcentrationTextLiteral.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(main_howeverStr) + String(dreamChooseFormat.suffix(5)) + "ngePlus")) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if springEquinox()?.isKind(of: ProblemEnableThen.self) == true || springEquinox()?.isKind(of: AdaptThen.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        ShrinkWindowManager.shared.recommendBody()
        //: stop_VideoCallTimer()
        effectively()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func effectively() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func flagStream() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if springEquinox()?.isKind(of: AsideViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = springEquinox() as! AsideViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(ConcentrationTextLiteral.RechargeHalfPage.rawValue) || vc.urlStr.contains(ConcentrationTextLiteral.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                effectively()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension TapThen {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func tire() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(userToolValue) + String(mDirectTitle.suffix(5)) + "oInfo")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: main_authorizeIdent.reversed(), encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.qualityBass()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.probability()
                //: self.stop_VideoCallTimer()
                self.effectively()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = FireLiteralModelType.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = BubblePlayerDirectorVideoPlayListener()
            //: player.setMute(bEnable: true)
            player.offdForDoing(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.agreeSmart(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.traffic()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func ittyBitty(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(mainFollowingText) + appClickTitle.lowercased())] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(dreamTimingIdent))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(String(mEquityKey))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(noti_exampleId))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(String(notiCheekValue) + String(m_reverseMessage))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(showReportTitle.suffix(7)))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(app_anyoneKey.suffix(7)) + String(appOrdinaryUrl))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
