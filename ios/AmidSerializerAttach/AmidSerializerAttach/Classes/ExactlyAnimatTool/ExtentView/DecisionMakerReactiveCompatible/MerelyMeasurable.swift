
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let dreamRepresentativeData:[Character] = ["t","o","U","s","e","r","I","n"]
fileprivate let userLearnId:String = "completeo"

/*: "toUid" :*/
fileprivate let k_listenerName:[Character] = ["t","o","U","i","d"]

/*: "nickname" :*/
fileprivate let m_museKey:String = "ncauseckname"

/*: "headPic" :*/
fileprivate let notiSpaceFormat:[Character] = ["h","e","a","d","P","i"]
fileprivate let dreamEditorTitle:String = "premium"

/*: "sex" :*/
fileprivate let kGameName:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let mBillStr:String = "havee"

/*: "tpAuth" :*/
fileprivate let mainLiteralId:[Character] = ["t","p","A","u","t"]
fileprivate let k_descriptionUrl:String = "H"

/*: "interest" :*/
fileprivate let k_soundIdent:[Character] = ["i"]
fileprivate let k_commercialMsg:String = "nteyereyest"

/*: "picture" :*/
fileprivate let noti_imitationData:String = "pictuparente"

/*: "loungePlus" :*/
fileprivate let main_oppositionParaHangMsg:String = "loungePping minute assistant wed while"
fileprivate let userRutFormat:[Character] = ["l","u","s"]

/*: "vipSkinId" :*/
fileprivate let dream_mapKey:String = "version wall completevipS"

/*: "voicePrice" :*/
fileprivate let m_awayMessage:[Character] = ["v","o","i","c","e","P","r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let noti_comprehensivePath:String = "viuppere"

/*: "voiceVIPPrice" :*/
fileprivate let show_narrowReserveColorMessage:String = "voitwo"
fileprivate let showArriveIdent:[Character] = ["i","c","e"]

/*: "videoVIPPrice" :*/
fileprivate let appMutualDisappearTitle:String = "videoVreading resign broadcast lifestyle"
fileprivate let mUsUniversalMessage:[Character] = ["e"]

/*: "version" :*/
fileprivate let appPlotKey:[Character] = ["v","e","r","s","i"]
fileprivate let user_contractStr:String = "ON"

/*: "headPicFrame" :*/
fileprivate let k_becomeId:[Character] = ["h","e","a","d","P","i"]
fileprivate let app_provideText:String = "processor transform professional distinction alreadycFrame"

/*: "signature" :*/
fileprivate let noti_processorAideFormat:[Character] = ["s","i","g","n","a","t","u","r","e"]

/*: "constellation" :*/
fileprivate let noti_survivalData:[Character] = ["c","o","n"]
fileprivate let user_provokeMessage:[Character] = ["s","t","e","l","l","a","t","i","o","n"]

/*: "onlineStatus" :*/
fileprivate let m_proposalMessage:[Character] = ["o","n","l","i","n","e","S","t","a","t","u"]
fileprivate let kPairEnjoyId:String = "view"

/*: "isNewUser" :*/
fileprivate let user_nurseId:String = "special still gazeisNewUs"
fileprivate let mFindUrl:String = "intro"

/*: "isOfficial" :*/
fileprivate let dreamMarriedValue:String = "iselect"
fileprivate let userGoingText:String = "Offilap exhibit"

/*: "userStatus" :*/
fileprivate let noti_libraryStartMsg:String = "udaily"
fileprivate let m_playerIdent:String = "erStatusother provoke find mp"

/*: "remarkInfo" :*/
fileprivate let dream_dirtPath:String = "remschedule"

/*: "content" :*/
fileprivate let dreamWayFormat:String = "conskipn"
fileprivate let k_lineUrl:[Character] = ["t"]

/*: "top" :*/
fileprivate let show_indicatorUrl:String = "generalp"

/*: "enableVideoCall" :*/
fileprivate let mFollowFormat:String = "enconceptb"
fileprivate let m_museMsg:[Character] = ["l","l"]

/*: "voiceBean" :*/
fileprivate let user_zzName:[Character] = ["v","o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let dreamChinKey:String = "vidperform"

/*: "prompt" :*/
fileprivate let m_formalPath:String = "inmaterominmatet"

/*: "matchRate" :*/
fileprivate let user_interactionData:[Character] = ["m","a"]
fileprivate let dreamComponentData:[Character] = ["t","c","h","R","a","t","e"]

/*: "existSess" :*/
fileprivate let user_streetId:[Character] = ["e","x","i","s","t","S"]
fileprivate let k_capableEquallyDateMessage:String = "ephonephone"

/*: "totalIntimate" :*/
fileprivate let show_shareUrl:[Character] = ["t","o","t","a","l","I","n","t"]
fileprivate let noti_convertPubliclyId:String = "imatdisk"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MerelyMeasurable.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class MerelyMeasurable: NSObject, HandyJSON {
public class MerelyMeasurable: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话（本地自定义字段）
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> MerelyMeasurable {
    public class func fillDrag(userDic: [String: Any]) -> MerelyMeasurable {
        //: let wrap = MerelyMeasurable.init()
        let wrap = MerelyMeasurable()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(dreamRepresentativeData) + userLearnId.replacingOccurrences(of: "complete", with: "f"))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(dreamRepresentativeData) + userLearnId.replacingOccurrences(of: "complete", with: "f"))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(k_listenerName))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(k_listenerName))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(m_museKey.replacingOccurrences(of: "cause", with: "i"))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(notiSpaceFormat) + dreamEditorTitle.replacingOccurrences(of: "premium", with: "c"))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(kGameName))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(mBillStr.replacingOccurrences(of: "have", with: "ag"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(mainLiteralId) + k_descriptionUrl.lowercased())] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(k_soundIdent) + k_commercialMsg.replacingOccurrences(of: "eye", with: "e"))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(noti_imitationData.replacingOccurrences(of: "parent", with: "r"))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(main_oppositionParaHangMsg.prefix(7)) + String(userRutFormat))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(dream_mapKey.suffix(4)) + "kinId")] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(m_awayMessage))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(noti_comprehensivePath.replacingOccurrences(of: "upper", with: "d") + "oPrice")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(show_narrowReserveColorMessage.replacingOccurrences(of: "two", with: "ce") + "VIPPr" + String(showArriveIdent))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(appMutualDisappearTitle.prefix(6)) + "IPPric" + String(mUsUniversalMessage))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(String(appPlotKey) + user_contractStr.lowercased())] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(k_becomeId) + String(app_provideText.suffix(6)))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(noti_processorAideFormat))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(String(noti_survivalData) + String(user_provokeMessage))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(String(m_proposalMessage) + kPairEnjoyId.replacingOccurrences(of: "view", with: "s"))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(user_nurseId.suffix(7)) + mFindUrl.replacingOccurrences(of: "intro", with: "er"))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(dreamMarriedValue.replacingOccurrences(of: "select", with: "s") + String(userGoingText.prefix(4)) + "cial")] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(noti_libraryStartMsg.replacingOccurrences(of: "daily", with: "s") + String(m_playerIdent.prefix(8)))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((dream_dirtPath.replacingOccurrences(of: "schedule", with: "ar") + "kInfo")) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(dream_dirtPath.replacingOccurrences(of: "schedule", with: "ar") + "kInfo")] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(dreamWayFormat.replacingOccurrences(of: "skip", with: "te") + String(k_lineUrl))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(show_indicatorUrl.replacingOccurrences(of: "general", with: "to"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((mFollowFormat.replacingOccurrences(of: "concept", with: "a") + "leVideoCa" + String(m_museMsg))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(mFollowFormat.replacingOccurrences(of: "concept", with: "a") + "leVideoCa" + String(m_museMsg))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(user_zzName))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(user_zzName))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((dreamChinKey.replacingOccurrences(of: "perform", with: "e") + "oBean")) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(dreamChinKey.replacingOccurrences(of: "perform", with: "e") + "oBean")] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((m_formalPath.replacingOccurrences(of: "inmate", with: "p"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(m_formalPath.replacingOccurrences(of: "inmate", with: "p"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(user_interactionData) + String(dreamComponentData))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(user_interactionData) + String(dreamComponentData))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(user_streetId) + k_capableEquallyDateMessage.replacingOccurrences(of: "phone", with: "s"))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(user_streetId) + k_capableEquallyDateMessage.replacingOccurrences(of: "phone", with: "s"))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(show_shareUrl) + noti_convertPubliclyId.replacingOccurrences(of: "disk", with: "e"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(show_shareUrl) + noti_convertPubliclyId.replacingOccurrences(of: "disk", with: "e"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
