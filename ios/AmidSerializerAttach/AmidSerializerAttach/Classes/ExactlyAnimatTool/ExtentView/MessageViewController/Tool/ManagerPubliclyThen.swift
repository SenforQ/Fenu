
//: Declare String Begin

/*: "msgType" :*/
fileprivate let dreamDecideBrowStr:String = "msgTypecap medium"

/*: "audio" :*/
fileprivate let show_markMsg:String = "auditick"

/*: "contentType" :*/
fileprivate let mSeaHandleId:[Character] = ["c","o","n","t","e","n","t"]
fileprivate let mainRecommendText:String = "Typepurchase install people people lust"

/*: "AudioMsg" :*/
fileprivate let showAgencyExhaustKey:String = "sole somethingAudioMsg"

/*: "audioData" :*/
fileprivate let showLearnBeginStr:String = "audiupper"
fileprivate let app_lineMessage:[Character] = ["D","a","t","a"]

/*: "audioUri" :*/
fileprivate let user_holdMessage:[Character] = ["a","u","d","i","o","U","r"]
fileprivate let noti_professionalPath:[Character] = ["i"]

/*: " customElem.data is error" :*/
fileprivate let mainDecisionCustodyName:String = "if sometime lack cust"
fileprivate let user_narrowValue:String = "shadow financial discount.data is"
fileprivate let show_tagPath:[Character] = [" ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let notiYourselfMsg:String = "bubblextra"

/*: "msgInfo" :*/
fileprivate let user_gratedMessage:String = "cast curvemsgIn"
fileprivate let user_tightPatientKey:String = "engagemento"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerPubliclyThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class ManagerPubliclyThen: NSObject {
public class ManagerPubliclyThen: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func recover(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension ManagerPubliclyThen {
extension ManagerPubliclyThen {
    //: class func getMessageInsertTime() -> Double {
    class func joinOrientation() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func element(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(dreamDecideBrowStr.prefix(7)))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == (show_markMsg.replacingOccurrences(of: "tick", with: "o")) {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(String(mSeaHandleId) + String(mainRecommendText.prefix(4)))]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(showAgencyExhaustKey.suffix(8))) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(showLearnBeginStr.replacingOccurrences(of: "upper", with: "o") + String(app_lineMessage))]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(user_holdMessage) + String(noti_professionalPath))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func perpendicularMessage(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(mainDecisionCustodyName.suffix(5)) + "omElem" + String(user_narrowValue.suffix(8)) + String(show_tagPath)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(notiYourselfMsg.replacingOccurrences(of: "bubble", with: "e"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(user_gratedMessage.suffix(5)) + user_tightPatientKey.replacingOccurrences(of: "engagement", with: "f"))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return element(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func priceMsginfo(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(dreamDecideBrowStr.prefix(7)))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(dreamDecideBrowStr.prefix(7)))] as? String
            //: if msgType == "audio" {
            if msgType == (show_markMsg.replacingOccurrences(of: "tick", with: "o")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((String(mSeaHandleId) + String(mainRecommendText.prefix(4)))) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(String(mSeaHandleId) + String(mainRecommendText.prefix(4)))] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(showAgencyExhaustKey.suffix(8))) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((showLearnBeginStr.replacingOccurrences(of: "upper", with: "o") + String(app_lineMessage))) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(showLearnBeginStr.replacingOccurrences(of: "upper", with: "o") + String(app_lineMessage))] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(user_holdMessage) + String(noti_professionalPath))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(user_holdMessage) + String(noti_professionalPath))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
