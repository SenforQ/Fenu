
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let mainParaPath:String = "app/getguide warning conduct"
fileprivate let k_fadeText:[Character] = ["C","o","n","f","i","g"]

/*: "mf/user/getMyInfo" :*/
fileprivate let dreamPhoneQuotePath:String = "mf/uscompare branch"
fileprivate let userFamilyUrl:String = "image distinctioner/ge"

/*: "mf/user/getInfoColumn" :*/
fileprivate let main_redFormat:String = "mf/useprepare nature"
fileprivate let appTheoryRapidlyKey:String = "Infoserious concerned pure"
fileprivate let appEpicFormat:String = "creation dynamics owner healthyColumn"

/*: "mfCoin" :*/
fileprivate let showNetworkUrl:String = "origin ease mm roadmfCoin"

/*: "mf/index/getConfig" :*/
fileprivate let user_wordContent:String = "domain refusemf/"
fileprivate let notiExtentUrl:String = "index/bot group"

/*: "baseinfo =  :*/
fileprivate let mAsternData:[Character] = ["b","a","s","e","i","n","f","o"," ","="]
fileprivate let main_menuTitle:String = "meeting"

/*: "UserBasicInfoSetting" :*/
fileprivate let show_conditionIdent:[Character] = ["U","s","e","r","B","a","s","i"]
fileprivate let user_openlyLicenseUrl:String = "hesitate communicate easecInf"

/*: "/userTag.json" :*/
fileprivate let m_begRemData:[Character] = ["/","u","s","e","r","T","a"]
fileprivate let show_valueShadeText:String = "replace system stripg.json"

/*: "json 解析失败" :*/
fileprivate let dreamMovieVerticalData:String = "maybeson"
fileprivate let app_seriesName:String = " 解析\u{5931}败"

/*: "app/reportDeviceId" :*/
fileprivate let main_actionStr:[Character] = ["a","p","p","/","r"]
fileprivate let app_cancelContent:[Character] = ["e","p","o","r","t","D"]
fileprivate let showPropertyIdent:String = "evaluate capacityeviceId"

/*: "token" :*/
fileprivate let dream_soulName:[UInt8] = [0x70,0x6b,0x6f,0x61,0x6a]

/*: "app/reportFcmPushToken" :*/
fileprivate let mainOrbitUrl:String = "app/repoimportant private amber current"
fileprivate let mainCapablePath:[Character] = ["r","t","F","c","m","P","u","s","h"]
fileprivate let notiBeautyValue:[Character] = ["T","o","k","e","n"]

/*: "app/init" :*/
fileprivate let userEngageMessage:String = "male"
fileprivate let mainTeamClearlyValue:[Character] = ["p","p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let k_drawingId:String = "if export sweep quality indexapp/pi"
fileprivate let main_enoughValue:String = "lame"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DrawReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var m_transformUrl = false

//: var isRetryDeviceIdTime = 3.0
var showCameraName = 3.0

//: class AppManagerRequest: NSObject {
class DrawReactiveCompatible: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func context(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = DoingicialReactiveCompatible()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(mainParaPath.prefix(7)) + String(k_fadeText))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                noti_foundData.set(result, forKey: show_messageStr)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<MigrationMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: AdministratorThen.share.appConfigMode = configModel
                    AdministratorThen.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: dreamMarginId, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = noti_foundData.dictionary(forKey: show_messageStr)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<MigrationMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: AdministratorThen.share.appConfigMode = configModel
                    AdministratorThen.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: dreamMarginId, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func reStart(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(dreamPhoneQuotePath.prefix(5)) + String(userFamilyUrl.suffix(5)) + "tMyInfo")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                noti_foundData.set(result, forKey: show_numberValue)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<RemovalReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: AdministratorThen.share.loginUserMode = userModel
                    AdministratorThen.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func pan(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(main_redFormat.prefix(6)) + "r/get" + String(appTheoryRapidlyKey.prefix(4)) + String(appEpicFormat.suffix(6)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: AdministratorThen.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                AdministratorThen.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(showNetworkUrl.suffix(6)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func bubbleQuote(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(user_wordContent.suffix(3)) + String(notiExtentUrl.prefix(6)) + "getConfig")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: AdministratorThen.share.loginUserMode.sex))"
            let configKey = "\(notiMinFormat)_\(String(describing: AdministratorThen.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                noti_foundData.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<ApplicationMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: AdministratorThen.share.appUserConfigMode = userModel
                    AdministratorThen.share.appUserConfigMode = userModel
                    //: EdgeMsgListener.shared.func__LogingIn()
                    EdgeMsgListener.shared.run()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: AdministratorThen.share.appUserConfigMode.baseInfo)
                    generalBy(baseinfo: AdministratorThen.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        ProblemBenchPoundThen.shared.blocked(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (ApplicationKingfisherCompatible.shared as! ApplicationKingfisherCompatible).minCharacter()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = noti_foundData.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<ApplicationMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: AdministratorThen.share.appUserConfigMode = userModel
                    AdministratorThen.share.appUserConfigMode = userModel
                    //: EdgeMsgListener.shared.func__LogingIn()
                    EdgeMsgListener.shared.run()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: k_clickId, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func generalBy(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = noti_foundData.string(forKey: mPointFormat)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (String(mAsternData) + main_menuTitle.replacingOccurrences(of: "meeting", with: " ")) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<InjuryModelType>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        noti_foundData.set(baseinfo, forKey: mPointFormat)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.directory() + (String(show_conditionIdent) + String(user_openlyLicenseUrl.suffix(4)) + "oSetting")
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.originalIn(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.slowPath(content: responseJson!, writePath: jsonPath + (String(m_begRemData) + String(show_valueShadeText.suffix(6))))
                            //: AdministratorThen.share.func__loadUserTagCacheData()
                            AdministratorThen.share.attachData()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (dreamMovieVerticalData.replacingOccurrences(of: "maybe", with: "j") + app_seriesName))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: AdministratorThen.share.func__loadUserTagCacheData()
            AdministratorThen.share.attachData()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func commandThread() {
        //: func__reportDeviceIdentifier()
        storage()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func storage() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = DoingicialReactiveCompatible()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(main_actionStr) + String(app_cancelContent) + String(showPropertyIdent.suffix(7)))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.lieu()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(main_localData)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.doContrast(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            appDepthCornerContent.wrinkle(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if showCameraName <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + showCameraName) {
                    //: isRetryDeviceIdTime *= 2
                    showCameraName *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.storage()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func tie() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: dream_soulName.map{$0^4}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = DoingicialReactiveCompatible()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(mainOrbitUrl.prefix(8)) + String(mainCapablePath) + String(notiBeautyValue))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                appDepthCornerContent.wrinkle(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func style() {
        //: if isRequestingInit {
        if m_transformUrl {
            //: return
            return
        }
        //: isRequestingInit = true
        m_transformUrl = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (userEngageMessage.replacingOccurrences(of: "male", with: "a") + String(mainTeamClearlyValue))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            m_transformUrl = false
            //: if succeed && AdministratorThen.share.request_HasInit == false {
            if succeed && AdministratorThen.share.request_HasInit == false {
                //: AdministratorThen.share.request_HasInit = true
                AdministratorThen.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func telecast(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(k_drawingId.suffix(6)) + main_enoughValue.replacingOccurrences(of: "lame", with: "ng"))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
