
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let mainControlIdent:String = "hem product change posewww.appl"
fileprivate let app_paperMessage:String = "e.comimpression panel"

/*: "后台播放音乐模式异常:  :*/
fileprivate let noti_aspectId:[Character] = ["后","台","播","\u{653e}","音","乐"]
fileprivate let appManValue:String = "模式\u{5f02}常: "

/*: "key_uid" :*/
fileprivate let m_loseIdent:String = "key_ujoin customer"
fileprivate let m_punishText:String = "istrong"

/*: "Reachable via WiFi" :*/
fileprivate let mCircleName:[Character] = ["R","e","a","c","h"]
fileprivate let main_fingerData:[Character] = ["a","b","l","e"," ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let k_billFormat:String = "Reachpanel country"
fileprivate let dream_missingFormat:String = "via fruit fast"
fileprivate let mainRevenueName:String = "reach spotCell"

/*: "Current network unavailable" :*/
fileprivate let dreamCommunicationName:String = "Currphotograph matter universal annual check"
fileprivate let appExpressionName:String = "nescalewo"
fileprivate let k_banId:String = "subvsubilsub"
fileprivate let show_licenseKey:String = "countryle"

/*: "Network none" :*/
fileprivate let main_factIdent:String = "engagement texture song charNetw"

/*: "call_response_bgm" :*/
fileprivate let k_mainId:[Character] = ["c","a","l","l","_","r","e"]
fileprivate let userPanelId:String = "distantpondistant"

/*: "Error playing BMG audio:  :*/
fileprivate let dream_bringCurveKey:String = "Error adjust permission"
fileprivate let m_burnMsg:String = "ng BMdrown file"
fileprivate let mainRangeUrl:String = "ban conduct birth song commendG aud"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ApprovalThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class ApprovalThen: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(mainControlIdent.suffix(8)) + String(app_paperMessage.prefix(5))))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = ApprovalThen()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = OnRecordThen()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(enableTaro),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: dreamMarginId,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension ApprovalThen {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func launchingWindow(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        ApprovalThen.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        BubbleVisitorReactiveCompatible.share.inactive()
        //: AppDelegateHelper.shared.installNotificationObservers()
        ApprovalThen.shared.fire()
        //: AppDelegateHelper.shared.initGetCache()
        ApprovalThen.shared.scan()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        BubbleVisitorReactiveCompatible.share.arouse()
        //: AppDelegateHelper.shared.currApplication = application
        ApprovalThen.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            ProblemBenchPoundThen.panelDetect(msg: (String(noti_aspectId) + appManValue) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func zoneFamily(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        ApprovalThen.shared.roundProduct()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func activeAgentForeground(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        ApprovalThen.shared.controlHolder()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        ApprovalThen.shared.appearFog()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func con(_ application: UIApplication) {
        //: let unreadMsgCount = AdministratorThen.share.unreadMessageNum
        let unreadMsgCount = AdministratorThen.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func premonitionWarning(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func unwanted(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        ApprovalThen.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension ApprovalThen {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func primaryReject(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if googleOpenURL(app, open: url, options: options) {
        if service(app, open: url, options: options) {
            //: return true
            return true
        }

        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension ApprovalThen {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func scan() {
        //: AdministratorThen.share.func__checkAppConfigModeNeedUpdate()
        AdministratorThen.share.sitTight()
        //: AdministratorThen.share.func__loadCurrentLoginInfoData()
        AdministratorThen.share.cookware()
    }

    //: @objc private func initRootController() {
    @objc private func enableTaro() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            ApprovalThen.shared.occur(currApplication!)
        }
        //: AdministratorThen.share.func__listenRequestHasInit()
        AdministratorThen.share.hearOut()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (noti_foundData.string(forKey: mainFoundStr)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            thick()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(AdministratorThen.share.loginUid)
            Crashlytics.crashlytics().setUserID(AdministratorThen.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(AdministratorThen.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(AdministratorThen.share.loginUid, forKey: (String(m_loseIdent.prefix(5)) + m_punishText.replacingOccurrences(of: "strong", with: "d")))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            InjuryPubTransactionObserver.shared.perTransactions()
            //: AdministratorThen.share.request_HasInit = false
            AdministratorThen.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            FlowEditionGiftManager.share.clearRed(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            DrawReactiveCompatible.tie()
            //: } else {
        } else {
            //: if AdministratorThen.share.loginSessionId.count > 0 {
            if AdministratorThen.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                InviteeRequestTool.executeValue { _ in
                }
                //: AdministratorThen.share.func__cleanPrevLoginData()
                AdministratorThen.share.comprehensiveToMetadata()
            }
            //: func__setupLoginViewController()
            daily()
            //: AdministratorThen.share.request_HasInit = true
            AdministratorThen.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func thick() {
        //: func__setupRootViewController(type: .Taking)
        sort(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func daily() {
        //: func__setupRootViewController(type: .Login)
        sort(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func sort(type: BarViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            quality(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.quality(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func quality(type: BarViewType) {
        //: if checkRootTarBarController(type: type) {
        if translate(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = PickBarController(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func translate(type: BarViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is PickBarController {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? PickBarController {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension ApprovalThen {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func fire() {
        // 网络状态监听
        //: AdministratorThen.share.startNotifierNetwork()
        AdministratorThen.share.createCountry()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(above(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(dream_lessMessage)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                MerelyThen.shared.scene()
                //: self.func__setupTakingViewController()
                self.thick()
                //: AdministratorThen.share.func__UserLoginChanged(isLogin: true)
                AdministratorThen.share.infoBy(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(AdministratorThen.share.loginUid)
                Crashlytics.crashlytics().setUserID(AdministratorThen.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(AdministratorThen.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(AdministratorThen.share.loginUid, forKey: (String(m_loseIdent.prefix(5)) + m_punishText.replacingOccurrences(of: "strong", with: "d")))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                InjuryPubTransactionObserver.shared.perTransactions()
                //: if !AdministratorThen.share.request_HasInit {
                if !AdministratorThen.share.request_HasInit {
                    //: AdministratorThen.share.request_HasInit = true
                    AdministratorThen.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                DrawReactiveCompatible.tie()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(appVoiceUnderText)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AdministratorThen.share.func__UserLoginChanged(isLogin: false)
                AdministratorThen.share.infoBy(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                AdviceLandscapeReactiveCompatible.shared.coverProperty(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.daily()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (ApplicationKingfisherCompatible.shared as! ApplicationKingfisherCompatible).borderPermission()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(mAccuracyName)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                DrawReactiveCompatible.reStart { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: dream_pointTitle, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func above(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(mCircleName) + String(main_fingerData)))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(k_billFormat.prefix(5)) + "able " + String(dream_missingFormat.prefix(4)) + String(mainRevenueName.suffix(4)) + "ular"))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            iconThemeBringBackPlace(showMsg: (String(dreamCommunicationName.prefix(4)) + "ent " + appExpressionName.replacingOccurrences(of: "scale", with: "t") + "rk un" + k_banId.replacingOccurrences(of: "sub", with: "a") + show_licenseKey.replacingOccurrences(of: "country", with: "b")).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(main_factIdent.suffix(4)) + "ork none"))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension ApprovalThen {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func roundProduct() {
        //: checkAndEndBackgroundTask()
        appearFog()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.appearFog()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func appearFog() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func scale() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = SampleEffectTool.default.atm(name: (String(k_mainId) + userPanelId.replacingOccurrences(of: "distant", with: "s") + "e_bgm"))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            coequal()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(dream_bringCurveKey.prefix(6)) + "playi" + String(m_burnMsg.prefix(5)) + String(mainRangeUrl.suffix(5)) + "io: ") + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func controlHolder() {
        //: stopSystemVibrate()
        voice()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func coequal() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func voice() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
