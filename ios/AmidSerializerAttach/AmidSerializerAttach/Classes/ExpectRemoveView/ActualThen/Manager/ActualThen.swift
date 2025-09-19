
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let app_arrayMmKey:String = "plus commercialmf/v"
fileprivate let show_fatalUrl:String = "quantity component receive collectionMatch/swi"
fileprivate let main_stackIdent:String = "TCH"

/*: "status" :*/
fileprivate let k_openlyKey:[UInt8] = [0x33,0x34,0x21,0x34,0x35,0x33]

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let user_factorFormat:String = "willing bronze splitmf/vi"
fileprivate let k_rejectPath:String = "tch/cguard icon success meeting"

/*: "matchVersion" :*/
fileprivate let user_railText:[UInt8] = [0x6e,0x6f,0x69,0x73,0x72,0x65,0x56,0x68,0x63,0x74,0x61,0x6d]

/*: "enterType" :*/
fileprivate let notiDenyDoinglyPenFormat:[UInt8] = [0x5e,0x55,0x4f,0x5e,0x49,0x6f,0x42,0x4b,0x5e]

private func skinTight(request num: UInt8) -> UInt8 {
    return num ^ 59
}

/*: "mf/videoMatch/headPics" :*/
fileprivate let m_demonstrateOutcomeFormat:String = "mf/vidnet side drop illegal rank"
fileprivate let kProblemTitle:String = "ch/hdocument bill monitor build"
fileprivate let k_behindData:String = "beg limited beautyeadPics"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let user_areaTitle:String = "ourselves coat commandmf/vi"
fileprivate let showDimensionFormat:String = "elect followingtch/mat"
fileprivate let user_publiclyReplaceTitle:[Character] = ["c","h","V","3"]

/*: "matchId" :*/
fileprivate let appButteEnterContent:[UInt8] = [0xe5,0xd9,0xec,0xdb,0xe0,0xc1,0xdc]

fileprivate func waitResign(hesitate num: UInt8) -> UInt8 {
    let value = Int(num) - 120
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let dream_mannerKey:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a"]
fileprivate let appImagePath:String = "plat granttchV4"

/*: "mf/videoMatch/matchV4List" :*/
fileprivate let show_groupData:String = "round entry bot treatmf/v"
fileprivate let kConversionFormat:String = "dirtch"
fileprivate let kFeeComputeKey:String = "V4Listagainst kit before normal weight"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActualThen.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class ActualThen: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func stateCheckion(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(app_arrayMmKey.suffix(4)) + "ideo" + String(show_fatalUrl.suffix(9)) + main_stackIdent.lowercased())
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: k_openlyKey.map{$0^64}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func giveUp(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(user_factorFormat.suffix(5)) + "deoMa" + String(k_rejectPath.prefix(5)) + "heckMatch")
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: user_railText.reversed(), encoding: .utf8)!: "v4", String(bytes: notiDenyDoinglyPenFormat.map{skinTight(request: $0)}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func explainCoincide(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(m_demonstrateOutcomeFormat.prefix(6)) + "eoMat" + String(kProblemTitle.prefix(4)) + String(k_behindData.suffix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func dotJaw(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(user_areaTitle.suffix(5)) + "deoMa" + String(showDimensionFormat.suffix(7)) + String(user_publiclyReplaceTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: appButteEnterContent.map{waitResign(hesitate: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func backhandUnitedStatesOverlook(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(dream_mannerKey) + String(appImagePath.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机视频池子用户列表
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_getMatchV4List(params: [String: Any], completion: @escaping FinishBlock) {
    class func systemCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4List"
        reqModel.requestPath = (String(show_groupData.suffix(4)) + "ideoM" + kConversionFormat.replacingOccurrences(of: "dirt", with: "at") + "/match" + String(kFeeComputeKey.prefix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
