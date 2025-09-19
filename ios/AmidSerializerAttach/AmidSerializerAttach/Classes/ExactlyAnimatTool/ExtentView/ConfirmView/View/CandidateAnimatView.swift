
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dream_databaseMessage:[UInt8] = [0x14,0x13,0x14,0x9,0x55,0x1e,0x12,0x19,0x18,0xf,0x47,0x54,0x5d,0x15,0x1c,0xe,0x5d,0x13,0x12,0x9,0x5d,0x1f,0x18,0x18,0x13,0x5d,0x14,0x10,0xd,0x11,0x18,0x10,0x18,0x13,0x9,0x18,0x19]

private func narrowBoundary(resource num: UInt8) -> UInt8 {
    return num ^ 125
}

/*: "gift" :*/
fileprivate let noti_followText:String = "gipressuret"

/*: "iosEffect" :*/
fileprivate let notiConversationPath:String = "clears"
fileprivate let k_generateStr:[Character] = ["E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let app_tableFormat:[Character] = ["i","o","s","E","m","p","e","r","o","r","E"]
fileprivate let show_economicData:String = "FFECT"

/*: "fromUid" :*/
fileprivate let app_effectMessage:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let mProfileIdent:String = "frcausem"
fileprivate let dreamSlimStr:[Character] = ["e"]

/*: "fromHeadPic" :*/
fileprivate let app_multiResStr:String = "line"
fileprivate let m_resumeTitle:String = "romHcalculation river row come"

/*: "pid" :*/
fileprivate let mQueryMsg:String = "pease"

/*: "num" :*/
fileprivate let mEquallyUrl:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let mHideMysteryName:String = "plapame"

/*: "name" :*/
fileprivate let show_ticketData:[Character] = ["n","a","m","e"]

/*: "giftPic" :*/
fileprivate let show_expressionPath:String = "pan policy media usedgiftPi"
fileprivate let showTravelName:[Character] = ["c"]

/*: "imgPreview" :*/
fileprivate let showProgramValue:[Character] = ["i","m","g","P","r","e","v","i","e","w"]

/*: "comboNum" :*/
fileprivate let show_spaceTitle:String = "comcono"
fileprivate let user_healthyLowerName:[Character] = ["N","u","m"]

/*: "showType" :*/
fileprivate let app_voiceName:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let dream_greetRemainId:String = "ballotnimballot"
fileprivate let kSeeName:String = "greet tie premium conductTimes"

/*: "iosVapEffect" :*/
fileprivate let userGuideValue:[Character] = ["i","o","s","V","a","p","E","f","f","e","c","t"]

/*: "giftNum" :*/
fileprivate let dreamSupplyRepresentativeFormat:String = "connect grant provoke motivation somegiftNum"

/*: "Send to %@" :*/
fileprivate let mainShakeLapFormat:String = "hung cookingSend "
fileprivate let userSiteTitle:String = "to %@instruction pea difference lay fruit"

/*: "all" :*/
fileprivate let notiSinceJudgeLoseText:String = "acommercialcommercial"

/*: "Send to All Numbers" :*/
fileprivate let userTeamPath:String = "pastor tire class title repeatSend to "
fileprivate let noti_asternMessage:[Character] = ["A","l","l"," ","N","u","m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CandidateAnimatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class CandidateAnimatView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.balance()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dream_databaseMessage.map{narrowBoundary(resource: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: FreebeeThen = {
        //: let view = TalkingGiftAnimatView.init()
        let view = FreebeeThen()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension CandidateAnimatView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func impression(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(noti_followText.replacingOccurrences(of: "pressure", with: "f"))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(app_tableFormat) + show_economicData.lowercased())) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(app_tableFormat) + show_economicData.lowercased())] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
                dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
                dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
                dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(mEquallyUrl))] = giftInfo?[(String(mEquallyUrl))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = giftInfo?[(String(show_ticketData))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = giftInfo?[(String(showProgramValue))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = giftInfo?[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))]
                //: dictM["iosEffect"] = giftStr
                dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(app_voiceName))] = giftInfo?[(String(app_voiceName))]
                //: dictM["animationTimes"] = "1"
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(String(mEquallyUrl))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
            dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
            dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
            dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(mEquallyUrl))] = giftInfo?[(String(mEquallyUrl))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = giftInfo?[(String(show_ticketData))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = giftInfo?[(String(showProgramValue))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = giftInfo?[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = giftInfo?[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(app_voiceName))] = giftInfo?[(String(app_voiceName))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(userGuideValue))] = giftInfo?[(String(userGuideValue))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = giftInfo?[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = dictM[(String(mEquallyUrl))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        adjudicate()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func boardDown(dict: [String: Any]) -> RaceMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(noti_followText.replacingOccurrences(of: "pressure", with: "f"))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(app_tableFormat) + show_economicData.lowercased())) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(app_tableFormat) + show_economicData.lowercased())] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
                dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
                dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
                dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(mEquallyUrl))] = giftInfo?[(String(mEquallyUrl))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = giftInfo?[(String(show_ticketData))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = giftInfo?[(String(showProgramValue))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = giftInfo?[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))]
                //: dictM["iosEffect"] = giftStr
                dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(app_voiceName))] = giftInfo?[(String(app_voiceName))]
                //: dictM["animationTimes"] = "1"
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
            dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
            dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
            dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(mEquallyUrl))] = giftInfo?[(String(mEquallyUrl))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = giftInfo?[(String(show_ticketData))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = giftInfo?[(String(showProgramValue))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = giftInfo?[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = giftInfo?[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(app_voiceName))] = giftInfo?[(String(app_voiceName))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(userGuideValue))] = giftInfo?[(String(userGuideValue))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = giftInfo?[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = dictM[(String(mEquallyUrl))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func direction(giftMessageDic: [String: Any], model: LanceTransformable) -> RaceMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((noti_followText.replacingOccurrences(of: "pressure", with: "f"))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<MultiMeasurable>.deserializeFrom(dict: giftMessageDic[(noti_followText.replacingOccurrences(of: "pressure", with: "f"))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(noti_followText.replacingOccurrences(of: "pressure", with: "f"))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(dreamSupplyRepresentativeFormat.suffix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
                    dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
                    //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
                    dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
                    dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(String(mEquallyUrl))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = (String(mainShakeLapFormat.suffix(5)) + String(userSiteTitle.prefix(5))).innerArguments(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (notiSinceJudgeLoseText.replacingOccurrences(of: "commercial", with: "l")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = (String(userTeamPath.suffix(8)) + String(noti_asternMessage)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(app_voiceName))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = AdministratorThen.share.loginUserMode.userID
                dictM[(String(app_effectMessage))] = AdministratorThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = AdministratorThen.share.loginUserMode.nickname
                dictM[(mProfileIdent.replacingOccurrences(of: "cause", with: "o") + "Nicknam" + String(dreamSlimStr))] = AdministratorThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = AdministratorThen.share.loginUserMode.headPic
                dictM[(app_multiResStr.replacingOccurrences(of: "line", with: "f") + String(m_resumeTitle.prefix(4)) + "eadPic")] = AdministratorThen.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(mQueryMsg.replacingOccurrences(of: "ease", with: "id"))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(String(mEquallyUrl))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = (String(mainShakeLapFormat.suffix(5)) + String(userSiteTitle.prefix(5))).innerArguments(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (notiSinceJudgeLoseText.replacingOccurrences(of: "commercial", with: "l")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(mHideMysteryName.replacingOccurrences(of: "lap", with: "n"))] = (String(userTeamPath.suffix(8)) + String(noti_asternMessage)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(show_expressionPath.suffix(6)) + String(showTravelName))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(show_spaceTitle.replacingOccurrences(of: "con", with: "b") + String(user_healthyLowerName))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(notiConversationPath.replacingOccurrences(of: "clear", with: "io") + String(k_generateStr))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(userGuideValue))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(app_voiceName))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(dream_greetRemainId.replacingOccurrences(of: "ballot", with: "a") + "tion" + String(kSeeName.suffix(5)))] = dictM[(String(mEquallyUrl))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func playUpConnect(model: RaceMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        adjudicate()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func endemic(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        adjudicate()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func allOwn() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func stateDoing(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        adjudicate()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func cookie(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = GazetteAnimatTool.shared.clear(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        adjudicate()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func adjudicate() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            corner()
        }
    }

    /// 播放
    //: func playNext() {
    func corner() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: RaceMeasurable = obj as! RaceMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == DegreeTransformable.myStery.rawValue || model.showType == DegreeTransformable.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.during(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                adjudicate()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension CandidateAnimatView {
    // 添加视图
    //: private func setupSubviews() {
    private func balance() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.corner()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.corner()
            }
        }
    }
}
