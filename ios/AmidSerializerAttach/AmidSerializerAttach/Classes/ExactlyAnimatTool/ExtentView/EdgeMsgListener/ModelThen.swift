
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mWorkUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "System notification" :*/
fileprivate let mSuspendKey:String = "Systthan communication exit society"
fileprivate let showMomentFormat:String = "tifinative"

/*: "http://static. :*/
fileprivate let main_describeId:String = "http:/draw rise scan"
fileprivate let app_dueInstallDiscountMsg:String = "control attribute week date mini/sta"

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let main_acquireData:[UInt8] = [0x71,0x3c,0x30,0x32,0x70,0x3e,0x2f,0x2f,0x70,0x36,0x32,0x38,0x70,0x32,0x3a,0x2c,0x2c,0x3e,0x38,0x3a,0x70,0x27,0x36,0x2b,0x30,0x31,0x38,0x72,0x29,0x6d,0x71,0x2f,0x31,0x38]

private func uniformSpread(hung num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "Customer Care Center" :*/
fileprivate let dream_truthFormat:String = "seek truthCustom"
fileprivate let dreamBusinessStr:[Character] = ["a"]
fileprivate let kAttributeMessage:String = "re Cunion text life to"

/*: .com/app/img/message/cs.png" :*/
fileprivate let notiPopularGoodTitle:String = "grated title camera.com/a"
fileprivate let appHomeIdent:String = "g/messcurrent concentration zz"
fileprivate let noti_veryTitle:String = ".pngcheek ignore able"

/*: "Public Chat Room" :*/
fileprivate let user_unknownKey:[Character] = ["P","u","b","l","i","c"," ","C"]
fileprivate let mainCompriseName:String = "mirrort"
fileprivate let mGenerateUrl:String = "extension counselor Room"

/*: "icon_chats_pcr" :*/
fileprivate let main_arcKey:String = "icon_chasociety reminder special"
fileprivate let m_recommendationFormat:String = "ts_pcrchar creative remaining imitation advantage"

/*: "New friends" :*/
fileprivate let kDonTitle:String = "New frieaddition month"
fileprivate let main_rejectMagnituderoTitle:String = "numberds"

/*: "icon_chats_mm" :*/
fileprivate let dream_leastFormat:String = "icon_coutside menu yes reverse rid"
fileprivate let dream_villageTitle:String = "hats_mmpossibility tick executive"

/*: " customElem.data is error" :*/
fileprivate let show_wallTitle:String = "human lab explore wind least cus"
fileprivate let userLimitValue:String = "per opportunity sense scribem.da"
fileprivate let userCommitteeTitle:[Character] = ["e","r","r","o","r"]

/*: "extra" :*/
fileprivate let kClubFrontStr:String = "exmerelyra"

/*: "msgInfo" :*/
fileprivate let dream_distinguishReLabelMessage:String = "msgInfofoundation universal anima today shrink"

/*: "messageType" :*/
fileprivate let mainGlassName:String = "messcon"
fileprivate let mainProcessExistPath:String = "activity little before wife windowgeType"

/*: "msgType" :*/
fileprivate let user_suspicionEquallyMsg:[Character] = ["m","s","g","T","y","p","e"]

/*: "tips" :*/
fileprivate let appInstallValue:String = "tipwoman"

/*: "totalIntimate" :*/
fileprivate let app_intervalData:[Character] = ["t","o","t"]
fileprivate let noti_livingData:[Character] = ["a","l","I","n","t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class ModelThen: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: MerelyMeasurable?
    var gj_userInfo: MerelyMeasurable? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == CreditsThen.getXiaoMiID() {
            if conv.userID == CreditsThen.rowId() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == CreditsThen.getCustomerServiceID() {
            } else if conv.userID == CreditsThen.tingId() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.speakerMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.running()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mWorkUrl.reversed(), encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension ModelThen {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func moment(chatType: TalkingIMChatType) -> ModelThen {
        //: let model = TalkingConversationModel()
        let model = ModelThen()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = CreditsThen.getXiaoMiID()
            model.userID = CreditsThen.rowId()
            //: model.targetId = CreditsThen.getXiaoMiID()
            model.targetId = CreditsThen.rowId()
            //: model.showName = "System notification".localized
            model.showName = (String(mSuspendKey.prefix(4)) + "em no" + showMomentFormat.replacingOccurrences(of: "native", with: "ca") + "tion").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(main_describeId.prefix(6)) + String(app_dueInstallDiscountMsg.suffix(4)) + "tic.") + "\(dreamVoiceMarginStr)" + String(bytes: main_acquireData.map{uniformSpread(hung: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = CreditsThen.getCustomerServiceID()
            model.userID = CreditsThen.tingId()
            //: model.targetId = CreditsThen.getCustomerServiceID()
            model.targetId = CreditsThen.tingId()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(dream_truthFormat.suffix(6)) + "er C" + String(dreamBusinessStr) + String(kAttributeMessage.prefix(4)) + "enter").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(main_describeId.prefix(6)) + String(app_dueInstallDiscountMsg.suffix(4)) + "tic.") + "\(dreamVoiceMarginStr)" + (String(notiPopularGoodTitle.suffix(6)) + "pp/im" + String(appHomeIdent.prefix(6)) + "age/cs" + String(noti_veryTitle.prefix(4)))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(user_unknownKey) + mainCompriseName.replacingOccurrences(of: "mirror", with: "ha") + String(mGenerateUrl.suffix(5))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(main_arcKey.prefix(8)) + String(m_recommendationFormat.prefix(6)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(kDonTitle.prefix(8)) + main_rejectMagnituderoTitle.replacingOccurrences(of: "number", with: "n")).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(dream_leastFormat.prefix(6)) + String(dream_villageTitle.prefix(7)))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension ModelThen {
    //: func func__updateLastShowMsg() {
    func running() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.speakerMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.speakerMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func speakerMsg(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(show_wallTitle.suffix(4)) + "tomEle" + String(userLimitValue.suffix(4)) + "ta is " + String(userCommitteeTitle)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(kClubFrontStr.replacingOccurrences(of: "merely", with: "t"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(dream_distinguishReLabelMessage.prefix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(mainGlassName.replacingOccurrences(of: "con", with: "a") + String(mainProcessExistPath.suffix(6)))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(user_suspicionEquallyMsg))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(mainGlassName.replacingOccurrences(of: "con", with: "a") + String(mainProcessExistPath.suffix(6)))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (appInstallValue.replacingOccurrences(of: "woman", with: "s"))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func drop(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.speakerMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.multi(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.running()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension ModelThen {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func multi(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = ManagerPubliclyThen.parseTXMessageData(data: data.customElem.data)
        let dic = ManagerPubliclyThen.recover(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(kClubFrontStr.replacingOccurrences(of: "merely", with: "t"))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(dream_distinguishReLabelMessage.prefix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(String(app_intervalData) + String(noti_livingData))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = DecisionMakerReactiveCompatible.clout(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    DecisionMakerReactiveCompatible.convertTime(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
