
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let k_incomeStr:String = "ford remind scriptmf/us"
fileprivate let dream_drawingSpecialName:String = "chipomm"

/*: "page" :*/
fileprivate let show_regionData:[UInt8] = [0x34,0x25,0x23,0x21]

private func numbEase(translation num: UInt8) -> UInt8 {
    return num ^ 68
}

/*: "mf/user/singleUser" :*/
fileprivate let showEpicContent:[Character] = ["m","f","/","u","s","e","r","/","s","i"]
fileprivate let dreamSimultaneouslyData:[Character] = ["n","g"]
fileprivate let show_scopeBroadUrl:String = "leUserpartner version elect"

/*: "uid" :*/
fileprivate let mainAskName:[UInt8] = [0xb8,0xa4,0xa9]

private func blindMethod(maybe num: UInt8) -> UInt8 {
    return num ^ 205
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MultiSearchManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class MultiSearchManager: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func recommendBot(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(k_incomeStr.suffix(5)) + "er/r" + dream_drawingSpecialName.replacingOccurrences(of: "chip", with: "ec") + "endUser")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: show_regionData.map{numbEase(translation: $0)}, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = ToneHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func stripKeep(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(showEpicContent) + String(dreamSimultaneouslyData) + String(show_scopeBroadUrl.prefix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: mainAskName.map{blindMethod(maybe: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = ToneHandyJSON.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [ToneHandyJSON] = //: return Array<ToneHandyJSON>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [ToneHandyJSON] = //: return Array<ToneHandyJSON>()
        .init()
    //: }()
}
