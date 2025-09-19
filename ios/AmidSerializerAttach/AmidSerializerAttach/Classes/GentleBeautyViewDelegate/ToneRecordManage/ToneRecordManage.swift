
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let user_topSearchFormat:String = "currency tail occur pass outerV4uj"
fileprivate let k_fireTitle:String = "exhaust distant adjustment6Rvg"
fileprivate let main_contractUrl:String = "6m91mine advantage"

/*: "data/index" :*/
fileprivate let kOkLanguageValue:String = "close flexibledata/"

/*: "toUid" :*/
fileprivate let notiLibraryJumpFormat:String = "budget reward illegal publish suntoUid"

/*: "uid" :*/
fileprivate let userGiftPerKey:String = "udefined"

/*: "POST" :*/
fileprivate let user_rankForwardUrl:String = "POarcT"

/*: "Token" :*/
fileprivate let dream_exclusiveMessage:String = "Tokenremain recommendation highlight wire"

/*: "无法解析出JSON字符串" :*/
fileprivate let noti_activeSupportMsg:String = "无法\u{89e3}析出"

/*: "plat" :*/
fileprivate let dream_formatPath:String = "peffectat"

/*: "ios" :*/
fileprivate let notiRejectKey:String = "IOS"

/*: "packageId" :*/
fileprivate let appEqualMsg:String = "PACKAG"
fileprivate let userHandleKey:String = "represent listener policy vessel todayeId"

/*: "channel" :*/
fileprivate let noti_beFormat:String = "captainhanne"
fileprivate let m_wantKey:String = "processing"

/*: "type" :*/
fileprivate let mFunCounterruptMsg:String = "typanima"

/*: "stat" :*/
fileprivate let app_onlyText:String = "stfordt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToneRecordManage.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let k_hugeName = ToneRecordManage()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let main_localData = (String(user_topSearchFormat.suffix(4)) + "GjsNUl" + String(k_fireTitle.suffix(4)) + "jvgD" + String(main_contractUrl.prefix(4)))

//: class UploadRecordManage: NSObject {
class ToneRecordManage: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func hour(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(kOkLanguageValue.suffix(5)) + "index")
        //: reqModel.requestServer = AdministratorThen.share.appConfigMode.reportDomain
        reqModel.requestServer = AdministratorThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.frontSet()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.engagement(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(notiLibraryJumpFormat.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = AdministratorThen.share.loginUserMode.userID
            messageDic[(userGiftPerKey.replacingOccurrences(of: "define", with: "i"))] = AdministratorThen.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.mutualAttach(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func assetClothe(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(kOkLanguageValue.suffix(5)) + "index")
        //: reqModel.requestServer = AdministratorThen.share.appConfigMode.reportDomain
        reqModel.requestServer = AdministratorThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.frontSet()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = AdministratorThen.share.loginUserMode.userID
        messageDic[(userGiftPerKey.replacingOccurrences(of: "define", with: "i"))] = AdministratorThen.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.mutualAttach(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func mutualAttach(model: DoingicialReactiveCompatible, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = appDepthCornerContent.vociferator(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.lieu()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (user_rankForwardUrl.replacingOccurrences(of: "arc", with: "S"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(dream_exclusiveMessage.prefix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", main_localData)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.assetArray(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.doContrast(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<DetectModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func assetArray(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (noti_activeSupportMsg + "JSON字符串"))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension ToneRecordManage {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func frontSet() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(dream_formatPath.replacingOccurrences(of: "effect", with: "l"))] = (notiRejectKey.lowercased()) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(appEqualMsg.lowercased() + String(userHandleKey.suffix(3)))] = dreamStreamKey /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = user_dailyName /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.lieu() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(noti_beFormat.replacingOccurrences(of: "captain", with: "c") + m_wantKey.replacingOccurrences(of: "processing", with: "l"))] = dreamStreamKey /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(mFunCounterruptMsg.replacingOccurrences(of: "anima", with: "e"))] = (app_onlyText.replacingOccurrences(of: "ford", with: "a")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
