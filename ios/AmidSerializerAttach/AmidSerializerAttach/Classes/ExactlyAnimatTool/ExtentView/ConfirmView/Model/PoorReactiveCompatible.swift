
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let noti_validOurData:[Character] = ["m","s","g","I","n","f","o"]

/*: "jumps" :*/
fileprivate let notiRolePath:String = "jumsweep"

/*: "uid" :*/
fileprivate let userApartmentTickTargetIdent:String = "usleeved"

/*: "roomId" :*/
fileprivate let main_largeInviteFormat:[UInt8] = [0xc0,0xdd,0xdd,0xdf,0xfb,0xd6]

/*: "msgId" :*/
fileprivate let mainCompositionId:[UInt8] = [0x1b,0x5,0x11,0x3f,0x12]

private func fromDark(publish num: UInt8) -> UInt8 {
    return num ^ 118
}

/*: "time" :*/
fileprivate let user_nowBoyContent:[UInt8] = [0xe3,0xfe,0xfa,0xf2]

private func developBeyond(dark num: UInt8) -> UInt8 {
    return num ^ 151
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PoorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class PoorReactiveCompatible: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: RaceChatController?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = PoorReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension PoorReactiveCompatible {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func messageFrame(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(noti_validOurData))][(notiRolePath.replacingOccurrences(of: "sweep", with: "ps"))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == AdministratorThen.share.loginUid {
            if dict[(userApartmentTickTargetIdent.replacingOccurrences(of: "sleeve", with: "i"))].stringValue == AdministratorThen.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if CreditsThen.isGroupChat(msg.groupID) {
        if CreditsThen.indoorsEnable(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: main_largeInviteFormat.map{$0^178}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: mainCompositionId.map{fromDark(publish: $0)}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: user_nowBoyContent.map{developBeyond(dark: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.clean(info: dict)
        }
    }
}
