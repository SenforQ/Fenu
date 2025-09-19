
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let k_enterErrorContent:String = "become particle nightlive/"
fileprivate let appAwayMessage:[Character] = ["e","n","t","e","r"]

/*: "streamerUid" :*/
fileprivate let dream_normallyPerformId:[UInt8] = [0x94,0x93,0x95,0x82,0x86,0x8a,0x82,0x95,0xb2,0x8e,0x83]

private func answerLet(root num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "live/userNum" :*/
fileprivate let show_traceIdent:[Character] = ["l","i","v","e","/","u","s","e","r","N","u","m"]

/*: "chatGroupId" :*/
fileprivate let userFadeData:[UInt8] = [0x72,0x79,0x70,0x65,0x56,0x63,0x7e,0x64,0x61,0x58,0x75]

/*: "live/members" :*/
fileprivate let app_agentStr:String = "live/find orbit food"

/*: "live/mute" :*/
fileprivate let app_oldGratedData:[Character] = ["l","i","v","e","/","m"]
fileprivate let noti_genText:String = "urounde"

/*: "targetUid" :*/
fileprivate let noti_beatUrl:[UInt8] = [0xfa,0xef,0xfc,0xe9,0xeb,0xfa,0xdb,0xe7,0xea]

private func seriesAtm(alliance num: UInt8) -> UInt8 {
    return num ^ 142
}

/*: "duration" :*/
fileprivate let show_establishData:[UInt8] = [0x70,0x61,0x66,0x75,0x60,0x7d,0x7b,0x7a]

private func twoCoat(steer num: UInt8) -> UInt8 {
    return num ^ 20
}

/*: "live/unmute" :*/
fileprivate let appExpressionKey:[Character] = ["l","i","v","e","/","u","n","m","u","t"]
fileprivate let kWhenData:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SkipReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class SkipReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func tool(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(k_enterErrorContent.suffix(5)) + String(appAwayMessage))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: dream_normallyPerformId.map{answerLet(root: $0)}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func enterQuit(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(show_traceIdent))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: userFadeData.map{$0^17}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func estimatedAttribute(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(app_agentStr.prefix(5)) + "members")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: userFadeData.map{$0^17}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func tabObserver(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(app_oldGratedData) + noti_genText.replacingOccurrences(of: "round", with: "t"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: noti_beatUrl.map{seriesAtm(alliance: $0)}, encoding: .utf8)!: targetUid, String(bytes: show_establishData.map{twoCoat(steer: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func betweenReduce(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(appExpressionKey) + String(kWhenData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: noti_beatUrl.map{seriesAtm(alliance: $0)}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
