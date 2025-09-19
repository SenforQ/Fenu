
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let mainInsideVesselName:String = "bad success observe reminder mutualmf/u"
fileprivate let show_shotWithoutMsg:String = "presentation balloon languagegetUserI"
fileprivate let show_listKey:String = "nairo"

/*: "uid" :*/
fileprivate let dreamLandmarkKey:[UInt8] = [0x46,0x5a,0x57]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let notiRestorelyId:String = "mf/uall thin until interaction enjoy"
fileprivate let main_untilValue:String = "tRecup ref jaw random psychological"
fileprivate let main_transformPhotoMsg:String = "igirls"

/*: "mf/crush/send" :*/
fileprivate let show_societyHypothesisName:[Character] = ["m","f","/","c","r","u","s","h","/"]
fileprivate let appSeriesText:[Character] = ["s","e","n","d"]

/*: "targetUid" :*/
fileprivate let noti_beanStr:[UInt8] = [0x3e,0x2b,0x38,0x2d,0x2f,0x3e,0x1f,0x23,0x2e]

/*: "user/attention" :*/
fileprivate let m_fromData:[UInt8] = [0xdb,0xdd,0xcb,0xdc,0x81,0xcf,0xda,0xda,0xcb,0xc0,0xda,0xc7,0xc1,0xc0]

private func sportsmanlikeHeavy(decent num: UInt8) -> UInt8 {
    return num ^ 174
}

/*: "user/removeAttention" :*/
fileprivate let noti_boaQuantityData:[Character] = ["u","s","e","r","/","r","e","m","o","v","e","A","t","t"]
fileprivate let mTrustIdent:String = "enlargeion"

/*: "attentionUid" :*/
fileprivate let user_usedFormat:[UInt8] = [0x96,0x83,0x83,0x92,0x99,0x83,0x9e,0x98,0x99,0xa2,0x9e,0x93]

/*: "removeAttentionUid" :*/
fileprivate let noti_distanceText:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let dream_failurePath:[UInt8] = [0x6b,0x63,0x61,0x6c,0x42,0x64,0x64,0x61,0x2f,0x72,0x65,0x73,0x75]

/*: "user/remBlack" :*/
fileprivate let mainTireName:String = "user/rsong matter yet demonstrate"
fileprivate let main_dirtValue:String = "emBlackstring flame column ease"

/*: "mf/moment/like" :*/
fileprivate let user_transitionKey:String = "complaint detect space orange barmf/mom"
fileprivate let mHighlightPath:[Character] = ["e","n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let showGroupTitle:[UInt8] = [0xd1,0xd3,0xd1,0xd9,0xd2,0xc8,0xf5,0xd8]

private func visualElect(anniversary num: UInt8) -> UInt8 {
    return num ^ 188
}

/*: "type" :*/
fileprivate let user_farData:[UInt8] = [0x65,0x68,0x61,0x74]

private func visibleBean(angle num: UInt8) -> UInt8 {
    return num ^ 17
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let notiFirmFormat:String = "mf/umerge perfect financial"
fileprivate let m_orbitValue:String = "circleploa"
fileprivate let dream_feePauseUrl:[Character] = ["c"]

/*: "auth_pic" :*/
fileprivate let k_lowStr:[UInt8] = [0xe4,0xf0,0xf1,0xed,0xda,0xf5,0xec,0xe6]

private func cogniseDuty(cloud num: UInt8) -> UInt8 {
    return num ^ 133
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvocateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class AdvocateReactiveCompatible: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func groupDomainCompletion(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(mainInsideVesselName.suffix(4)) + "ser/" + String(show_shotWithoutMsg.suffix(8)) + show_listKey.replacingOccurrences(of: "air", with: "f"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: dreamLandmarkKey.map{$0^51}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func slow(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(notiRestorelyId.prefix(4)) + "ser/ge" + String(main_untilValue.prefix(4)) + "eivedG" + main_transformPhotoMsg.replacingOccurrences(of: "girl", with: "ft"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: dreamLandmarkKey.map{$0^51}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func putCompletion(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(show_societyHypothesisName) + String(appSeriesText))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: noti_beanStr.map{$0^74}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func arrow(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: m_fromData.map{sportsmanlikeHeavy(decent: $0)}, encoding: .utf8)! : (String(noti_boaQuantityData) + mTrustIdent.replacingOccurrences(of: "large", with: "t"))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: user_usedFormat.map{$0^247}, encoding: .utf8)!: uid] : [String(bytes: noti_distanceText.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func faceBig(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: dream_failurePath.reversed(), encoding: .utf8)! : (String(mainTireName.prefix(6)) + String(main_dirtValue.prefix(7)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: dreamLandmarkKey.map{$0^51}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    LandscapeThen.shared.layerPut(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    LandscapeThen.shared.boxColor(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func numbero(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(user_transitionKey.suffix(6)) + String(mHighlightPath))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: showGroupTitle.map{visualElect(anniversary: $0)}, encoding: .utf8)!: mid, String(bytes: user_farData.map{visibleBean(angle: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func unprocessed(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func label(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(notiFirmFormat.prefix(4)) + "ser/" + m_orbitValue.replacingOccurrences(of: "circle", with: "u") + "dAuthPi" + String(dream_feePauseUrl))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: k_lowStr.map{cogniseDuty(cloud: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
