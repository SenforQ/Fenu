
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let main_ceremonyProvideBranchValue:[UInt8] = [0x18,0x36,0x38,0x3d,0x3a,0x1e,0x43,0x49,0x3e,0x42,0x36,0x49,0x3a,0x25,0x3d,0x44,0x49,0x44,0x2a,0x43,0x41,0x44,0x38,0x40,0x22,0x48,0x3c,0x1e,0x39,0x16,0x47,0x47,0x36,0x4e,0x20,0x3a,0x4e]

fileprivate func trueWhether(place num: UInt8) -> UInt8 {
    let value = Int(num) + 43
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let noti_playStr:[UInt8] = [0x49,0x6b,0x69,0x62,0x6f,0x5a,0x78,0x63,0x7c,0x6b,0x7e,0x6f,0x49,0x62,0x6b,0x7e,0x5c,0x63,0x6e,0x6f,0x65,0x5e,0x63,0x7a,0x79,0x43,0x79,0x59,0x62,0x65,0x7d,0x55]

private func transportTrace(album num: UInt8) -> UInt8 {
    return num ^ 10
}

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let dreamDrownName:[UInt8] = [0x65,0x63,0x6e,0x6f,0x20,0x6d,0x69,0x68,0x20,0x6f,0x74,0x20,0x74,0x6e,0x65,0x73,0x20,0x65,0x62,0x20,0x79,0x6c,0x6e,0x6f,0x20,0x6e,0x61,0x63,0x20,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6b,0x63,0x69,0x75,0x51]

/*: "txt" :*/
fileprivate let appReserveRoleMessage:String = "attitudet"

/*: "audio" :*/
fileprivate let noti_displayName:String = "audprepare"

/*: "Please add greeting text" :*/
fileprivate let main_followingEarlyFormat:String = "individual magnitudePlease"
fileprivate let notiBounceRoleMessage:[Character] = [" ","a","d"]
fileprivate let appSceneMessage:[Character] = ["d"," ","g","r","e","e","t","i","n","g"," ","t","e","x","t"]

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let notiTunTitle:[UInt8] = [0xe4,0xd2,0xc8,0x9d,0xd5,0xdc,0xcb,0xd8,0x9d,0xd3,0xd2,0xc9,0x9d,0xce,0xd8,0xc9,0x9d,0xc8,0xcd,0x9d,0xdc,0x9d,0xcd,0xd5,0xd2,0xc9,0xd2,0x9d,0xda,0xcf,0xd8,0xd8,0xc9,0xd4,0xd3,0xda,0x91,0x9d,0xcd,0xd1,0xd8,0xdc,0xce,0xd8,0x9d,0xce,0xd8,0xc9,0x9d,0xd4,0xc9,0x9d,0xc8,0xcd,0x9d,0xdf,0xd8,0xdb,0xd2,0xcf,0xd8,0x9d,0xce,0xd8,0xd3,0xd9,0xd4,0xd3,0xda,0x9c]

private func duffleCoat(selected num: UInt8) -> UInt8 {
    return num ^ 189
}

/*: "Cancel" :*/
fileprivate let kAlbumWhyStr:[Character] = ["C","a","n","c","e","l"]

/*: "Go to set" :*/
fileprivate let kBackgroundMessage:String = "cookie distribution commitGo to"
fileprivate let appFoundUrl:[Character] = [" ","s","e","t"]

/*: "#startTime#" :*/
fileprivate let notiIncomeAdIdent:[Character] = ["#","s","t","a","r"]
fileprivate let mainAudiencePath:String = "pea combine suspiciontTime#"

/*: "#endTime#" :*/
fileprivate let app_examineName:[Character] = ["#","e","n","d","T","i","m","e","#"]

/*: "text" :*/
fileprivate let appOverlookData:[Character] = ["t","e","x","t"]

/*: "img" :*/
fileprivate let user_plotResignStr:String = "IMG"

/*: "video" :*/
fileprivate let m_featurePath:[Character] = ["v","i","d","e","o"]

/*: "gift" :*/
fileprivate let app_tickFenceIdent:[Character] = ["g","i","f","t"]

/*: "PrivateChat 点击引用消息 :*/
fileprivate let noti_secureValue:String = "poor judge classPrivate"
fileprivate let dream_boxAnimalName:[Character] = ["C","h","a","t"," "]
fileprivate let userPortionMessage:String = "\u{70b9}击引用消息"

/*: "Sent " :*/
fileprivate let m_wrapValue:[Character] = ["S","e","n","t"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlumpDownReadingManageressChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class PlumpDownReadingManageressChatManager: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = PlumpDownReadingManageressChatManager()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: main_ceremonyProvideBranchValue.map{trueWhether(place: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func untilCity(toUid: String, msgView: MessageViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else { return }
        // 男性
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(AdministratorThen.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: noti_playStr.map{transportTrace(album: $0)}, encoding: .utf8)! + "\(String(AdministratorThen.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = noti_foundData.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? ReconstructThen
            let indexModel = indexModel as? ReconstructThen
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: WarnThen.self) {
                if indexModel!.isKind(of: WarnThen.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! WarnThen
                    let textMsgModel = indexModel as! WarnThen
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: HeapReactiveCompatible.self) ||
                if indexModel!.isKind(of: HeapReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: WarnThen.self) ||
                    indexModel!.isKind(of: WarnThen.self) ||
                    //: indexModel!.isKind(of: GageBubbleCellData.self) ||
                    indexModel!.isKind(of: GageBubbleCellData.self) ||
                    //: indexModel!.isKind(of: EnableicialCellData.self) {
                    indexModel!.isKind(of: EnableicialCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            noti_foundData.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            noti_foundData.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func block(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(AdministratorThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(AdministratorThen.share.loginUserMode.userID)_\(userPostFormat)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: dreamDrownName.reversed(), encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        VillageView.projectShow()
        //: TalkingChatRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        ShrinkReactiveCompatible.fromStorage { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !AdministratorThen.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !AdministratorThen.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ShrinkWindowManager.shared.pinLap()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(appReserveRoleMessage.replacingOccurrences(of: "attitude", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(noti_displayName.replacingOccurrences(of: "prepare", with: "io"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(main_followingEarlyFormat.suffix(6)) + String(notiBounceRoleMessage) + String(appSceneMessage)).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            nearRate(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func nearRate(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(AdministratorThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(AdministratorThen.share.loginUserMode.userID)_\(userPostFormat)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func tarLiveHandler(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: TalkingChatRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        ShrinkReactiveCompatible.worker(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = GainGageAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if BubbleVisitorReactiveCompatible.share.interfaceLang == StatusExpressionConvertible.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                GentleAlertShow.begNativeConfig(message: String(bytes: notiTunTitle.map{duffleCoat(selected: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kAlbumWhyStr)).localized, rightBtnTitle: (String(kBackgroundMessage.suffix(5)) + String(appFoundUrl)).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !AdministratorThen.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !AdministratorThen.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                ShrinkWindowManager.shared.pinLap()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func recentPush(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard AdministratorThen.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard AdministratorThen.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: AdministratorThen.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.gibbet(shDateStr: AdministratorThen.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: AdministratorThen.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.gibbet(shDateStr: AdministratorThen.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.cerebrate(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = AdministratorThen.share.appConfigMode.CSConfig.systemTips
        var tips = AdministratorThen.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(notiIncomeAdIdent) + String(mainAudiencePath.suffix(6))), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(app_examineName)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: ReconstructThen, msgView: TUIMessageController) {
    static func spread(cellData: ReconstructThen, msgView: MessageViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = noti_foundData.object(forKey: PlumpDownReadingManageressChatManager.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: GageBubbleCellData.self) ||
                  cellData.isKind(of: GageBubbleCellData.self) ||
                  //: cellData.isKind(of: EnableicialCellData.self)) else { return }
                  cellData.isKind(of: EnableicialCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                closeDetail(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                noti_foundData.set(array, forKey: PlumpDownReadingManageressChatManager.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: FireThen.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: FireThen.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! ReconstructThen
            let data = msgCellData as! ReconstructThen
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                closeDetail(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: ReconstructThen, _ msgView: TUIMessageController) {
    private static func closeDetail(_ cellData: ReconstructThen, _ msgView: MessageViewController) {
        //: if cellData.isKind(of: GageBubbleCellData.self) {
        if cellData.isKind(of: GageBubbleCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.off(cellData, billOfFareModel: model)
            }

            //: } else if cellData.isKind(of: EnableicialCellData.self) {
        } else if cellData.isKind(of: EnableicialCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.notBuild(cellData, wall: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func layer(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: MessageViewController) {
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard PurchaseViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        PurchaseViewController.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func overdo(_ direction: SignalTitleConvertible, msgType: Int, msgTime: Date?) -> Bool {
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard PurchaseViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard PlumpDownReadingManageressChatManager.bagTime(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func bagTime(_ direction: SignalTitleConvertible, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: ReconstructThen) -> Bool {
    static func yaup(cellData: ReconstructThen) -> Bool {
        //: if AdministratorThen.share.loginUserMode.loungePlus == false,
        if AdministratorThen.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: ReconstructThen) -> Bool {
    static func convert(cellData: ReconstructThen) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if AdministratorThen.share.loginUserMode.loungePlus == true,
        if AdministratorThen.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: ReconstructThen) -> Bool {
    static func omit(cellData: ReconstructThen) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = PlumpDownReadingManageressChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: ReconstructThen, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func material(cellData: ReconstructThen, targetId: String) -> PreferConversationModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = PreferConversationModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = AdministratorThen.share.loginUserMode.userID
            quoteModel.uid = AdministratorThen.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = InvisibleModel()
        //: if cellData.isKind(of: WarnThen.self) {
        if cellData.isKind(of: WarnThen.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (String(appOverlookData))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: GageBubbleCellData.self) {
        } else if cellData.isKind(of: GageBubbleCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (user_plotResignStr.lowercased())
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: EnableicialCellData.self) {
        } else if cellData.isKind(of: EnableicialCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (String(m_featurePath))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: HeapReactiveCompatible.self) {
        } else if cellData.isKind(of: HeapReactiveCompatible.self) {
            //: let audioCelldata = cellData as! HeapReactiveCompatible
            let audioCelldata = cellData as! HeapReactiveCompatible
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (noti_displayName.replacingOccurrences(of: "prepare", with: "io"))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = DecisionMakerReactiveCompatible.cleanMessage(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: FireThen.self) {
        } else if cellData.isKind(of: FireThen.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (String(app_tickFenceIdent))
            //: let giftCellData = cellData as! FireThen
            let giftCellData = cellData as! FireThen
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: ReconstructThen, targetId: String) {
    static func player(cellData: ReconstructThen, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        ProblemBenchPoundThen.panelDetect(msg: (String(noti_secureValue.suffix(7)) + String(dream_boxAnimalName) + userPortionMessage) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (String(appOverlookData)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = MechanismPopView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.selsyn()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (user_plotResignStr.lowercased()) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(dream_acceptFormat)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = ExactlyHandyJSON()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = LogHandyJSON()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [ExactlyHandyJSON] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = HaveViewController(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            PlumpDownReadingManageressChatManager.share.thenController()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (String(m_featurePath)) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = InMigrationRecognizerDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            PlumpDownReadingManageressChatManager.share.thenController()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (noti_displayName.replacingOccurrences(of: "prepare", with: "io")) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = FireMsgTable.windowTa(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = DayRoundingModelType()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = FireMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == AdministratorThen.share.loginUserMode.userID {
                if renderData.uid == AdministratorThen.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = AdministratorThen.share.loginUserMode.userID
                    model.db_touid = AdministratorThen.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                FireMsgTable.generate(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            SuggestReactiveCompatible.shared.audioWith()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            SuggestReactiveCompatible.shared.playBridge(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (String(app_tickFenceIdent)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = MechanismPopView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(m_wrapValue)).localized + renderData.renderData.deviseHandle() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.selsyn()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension PlumpDownReadingManageressChatManager {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func finish(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
