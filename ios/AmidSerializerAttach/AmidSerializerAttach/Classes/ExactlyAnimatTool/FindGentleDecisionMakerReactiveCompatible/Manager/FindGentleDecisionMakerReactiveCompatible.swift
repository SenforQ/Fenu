
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let notiRawNetworkFormat:[Character] = ["c","a","l","l","/","s"]
fileprivate let main_libraryStr:[Character] = ["e"]
fileprivate let mServerValue:[Character] = ["n","d","M","s","g"]

/*: "logId" :*/
fileprivate let mSpendFormat:String = "logIdopposite powder"

/*: "content" :*/
fileprivate let main_maneAmberNameureValue:[Character] = ["c","o","n","t","e","n","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindGentleDecisionMakerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol EdgeThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func frontEnd(Msg: DetectFairlyModelType)
}

//: class TalkingVideoDanmuManager: NSObject {
class FindGentleDecisionMakerReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: FindGentleDecisionMakerReactiveCompatible? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: EdgeThen?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func actual() -> FindGentleDecisionMakerReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = FindGentleDecisionMakerReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension FindGentleDecisionMakerReactiveCompatible {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func only(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = DetectFairlyModelType.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = AdaptTaThen()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.versionMake(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.frontEnd(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func to(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(notiRawNetworkFormat) + String(main_libraryStr) + String(mServerValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(mSpendFormat.prefix(5)))] = logId
        //: dict["content"] = content
        dict[(String(main_maneAmberNameureValue))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension FindGentleDecisionMakerReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func drawn() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if FindGentleDecisionMakerReactiveCompatible._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            FindGentleDecisionMakerReactiveCompatible._instance = nil
        }
    }
}
