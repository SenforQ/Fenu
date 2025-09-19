
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let user_putValue:String = "PtillPS"

/*: "UID" :*/
fileprivate let notiEstablishBeanMsg:String = "gradeD"

/*: "Any" :*/
fileprivate let k_minFormat:String = "poor faint typeAny"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let main_headMsg:[UInt8] = [0x6e,0x6f,0x73,0x6a,0x2e,0x67,0x61,0x54,0x72,0x65,0x73,0x75,0x2f,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x6f,0x66,0x6e,0x49,0x63,0x69,0x73,0x61,0x42,0x72,0x65,0x73,0x55]

/*: "获取数据" :*/
fileprivate let mainFourRankPath:[Character] = ["获","取","数","据"]

/*: "json 解析失败" :*/
fileprivate let appDistributionTitle:[Character] = ["j","s","o","n"," ","\u{89e3}","析","\u{5931}","败"]

/*: "request_HasInit" :*/
fileprivate let userEasternFormat:[Character] = ["r","e","q","u","e","s","t","_","H","a","s","I","n"]
fileprivate let main_greenValue:[Character] = ["i","t"]

/*: "Reachable via WiFi" :*/
fileprivate let showOppositeIdent:String = "Reacposition generate traffic"
fileprivate let mainWayPath:String = " via Wfound each dimension faint"
fileprivate let mainLengthName:[Character] = ["i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let main_poorUrl:String = "gen"
fileprivate let app_windowFormat:String = "erecommendationha"
fileprivate let noti_alwaysLearnText:String = "a Ceallow its composition"

/*: "Network not reachable" :*/
fileprivate let mainRevenuePath:[Character] = ["N","e","t","w","o","r","k"," ","n"]
fileprivate let app_materialName:[Character] = ["o","t"," ","r","e","a","c","h","a","b","l","e"]

/*: "Not reachable" :*/
fileprivate let mDirectTitle:[Character] = ["N","o","t"," ","r"]
fileprivate let user_importantName:String = "EA"
fileprivate let m_ownMatchContent:String = "CHABLE"

/*: "Unable to start notifier" :*/
fileprivate let dreamFollowIdent:String = "Unableprice earn"
fileprivate let mRearStr:String = "sflamer"
fileprivate let k_trafficValue:String = "sure pan bass mobilet not"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class AdministratorThen: NSObject {
public class AdministratorThen: NSObject {
    //: @objc static public let share = AdministratorThen()
    @objc public static let share = AdministratorThen()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = RemovalReactiveCompatible() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = ApplicationMeasurable() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = WingInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = MigrationMeasurable() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: CantSignedCount = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return BecauseMultiplierTarget.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return BecauseMultiplierTarget.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: BubbleVisitorReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (user_putValue.replacingOccurrences(of: "till", with: "H") + "ESSID") {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: BubbleVisitorReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (notiEstablishBeanMsg.replacingOccurrences(of: "grade", with: "UI")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func side() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = RemovalReactiveCompatible()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        k_turnIdent = (String(k_minFormat.suffix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        mainValueRefreshAccuracyFormat = (String(k_minFormat.suffix(3))).localized
    }
}

//: extension AdministratorThen {
public extension AdministratorThen {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func infoBy(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(AdministratorThen.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            noti_foundData.set(AdministratorThen.share.loginUserMode.userID, forKey: mainFoundStr)
            //: } else {
        } else {
            //: EdgeMsgListener.shared.func__LogingOut()
            EdgeMsgListener.shared.announcement()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            noti_foundData.removeObject(forKey: mainFoundStr)
            //: func__cleanPrevLoginData()
            comprehensiveToMetadata()
//            BubbleVisitorReactiveCompatible.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            FlowEditionGiftManager.share.clearRed(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func sitTight() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = noti_foundData.dictionary(forKey: show_messageStr)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<MigrationMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: AdministratorThen.share.appConfigMode = configModel
            AdministratorThen.share.appConfigMode = configModel
        }
        //: if let status = AdministratorThen.share.reachability?.connection, status != .unavailable {
        if let status = AdministratorThen.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            searchedData()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(lodgeIn(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func searchedData() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        DrawReactiveCompatible.context { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func cookware() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = noti_foundData.dictionary(forKey: show_numberValue)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<RemovalReactiveCompatible>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func comprehensiveToMetadata() {
        //: func__reSet()
        side()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        noti_foundData.removeObject(forKey: show_numberValue)
//        let oldServerUrl: String = BubbleVisitorReactiveCompatible.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func attachData() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.directory() + String(bytes: main_headMsg.reversed(), encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.siteFile(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<InjuryModelType>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (String(mainFourRankPath)))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(appDistributionTitle)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func hearOut() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(userEasternFormat) + String(main_greenValue)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    DrawReactiveCompatible.style()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    public func createCountry() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(showOppositeIdent.prefix(4)) + "hable" + String(mainWayPath.prefix(6)) + String(mainLengthName)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (main_poorUrl.replacingOccurrences(of: "gen", with: "R") + app_windowFormat.replacingOccurrences(of: "recommendation", with: "ac") + "ble vi" + String(noti_alwaysLearnText.prefix(4)) + "llular"))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(mainRevenuePath) + String(app_materialName)))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(mDirectTitle) + user_importantName.lowercased() + m_ownMatchContent.lowercased()))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(dreamFollowIdent.prefix(6)) + " to " + mRearStr.replacingOccurrences(of: "flame", with: "ta") + String(k_trafficValue.suffix(5)) + "ifier"))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func lodgeIn(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            searchedData()
        }
    }
}
