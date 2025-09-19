
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let dream_loseValue:[Character] = ["D","B","U","s","e","r","V"]
fileprivate let noti_barName:String = "cheek togetheroiceT"

/*: "msgId" :*/
fileprivate let dreamAwakeTitle:String = "anyone mask scriptmsgId"

/*: "toUid" :*/
fileprivate let main_missNearbyValue:String = "toUiddistinction tire every literal"

/*: "senderId" :*/
fileprivate let mainFilePath:[Character] = ["s","e","n","d","e","r"]
fileprivate let userEnvelopeStr:[Character] = ["I","d"]

/*: "audioSandbox" :*/
fileprivate let userRegionStr:String = "correct go oneaudioS"
fileprivate let show_middleIdent:[Character] = ["a","n","d","b","o","x"]

/*: "audioLength" :*/
fileprivate let app_ceaseUrl:String = "ahandlei"
fileprivate let show_matchSteadPeerKey:String = "oLengthphone strength"

/*: "audioData" :*/
fileprivate let m_editorId:String = "audioDatpose example ok moon"
fileprivate let m_relationName:[Character] = ["a"]

/*: "audioUri" :*/
fileprivate let showCourseAddressFormat:[Character] = ["a","u","d","i","o","U","r","i"]

/*: "isRead" :*/
fileprivate let app_ceaseId:String = "isReadcomposition right"

/*: "WCDB表 :*/
fileprivate let noti_temptLayerMsg:String = "WCDB\u{8868}"

/*: : 批量插入数据失败。error： :*/
fileprivate let dream_averageId:[Character] = [":"," ","批","量","插","入","数","据"]
fileprivate let dreamRailName:String = "\u{5931}败。e"

/*: : 更新数据失败。error： :*/
fileprivate let dream_recognizeName:String = ": 更新数\u{636e}"
fileprivate let mainAwakeUrl:[Character] = ["r","r","o","r","\u{ff1a}"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FireMsgTable.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let dream_adjustIdent = (String(dream_loseValue) + String(noti_barName.suffix(5)) + "able")
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class FireMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = FireMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension FireMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func tempPlatform(_ dic: [AnyHashable: Any]) -> FireMsgTable {
        //: let cache = WCDBVoiceMsgTable()
        let cache = FireMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(dreamAwakeTitle.suffix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(main_missNearbyValue.prefix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(mainFilePath) + String(userEnvelopeStr))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(userRegionStr.suffix(6)) + String(show_middleIdent))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(app_ceaseUrl.replacingOccurrences(of: "handle", with: "ud") + String(show_matchSteadPeerKey.prefix(7)))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(m_editorId.prefix(8)) + String(m_relationName))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(m_editorId.prefix(8)) + String(m_relationName))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(showCourseAddressFormat))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(showCourseAddressFormat))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(app_ceaseId.prefix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        flush(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func generate(_ voiceMsg: FireMsgTable) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        FireMsgTable.today([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func today(_ voiceMsgs: [FireMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MerelyThen.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try MerelyThen.shared.database?.insert(voiceMsgs, intoTable: dream_adjustIdent)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                ProblemBenchPoundThen.panelDetect(msg: (noti_temptLayerMsg) + "\(dream_adjustIdent)" + (String(dream_averageId) + dreamRailName + "rror：") + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func windowTa(with msgId: String) -> FireMsgTable? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = FireMsgTable.deal(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func deal(with msgIds: [String]) -> [FireMsgTable]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = FireMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [FireMsgTable]? = try MerelyThen.shared.database?.getObjects(on: FireMsgTable.Properties.all, fromTable: dream_adjustIdent, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func flush(_ voiceMsg: FireMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MerelyThen.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if FireMsgTable.windowTa(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = FireMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try MerelyThen.shared.database?.update(table: dream_adjustIdent,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: FireMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                    ProblemBenchPoundThen.panelDetect(msg: (noti_temptLayerMsg) + "\(dream_adjustIdent)" + (dream_recognizeName + "失败。e" + String(mainAwakeUrl)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                FireMsgTable.generate(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func scheduleVoice(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = FireMsgTable.windowTa(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        FireMsgTable.flush(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func advantageId(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MerelyThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = FireMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? MerelyThen.shared.database?.delete(fromTable: dream_adjustIdent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func communication(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MerelyThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = FireMsgTable.Properties.db_senduid == userId && FireMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? MerelyThen.shared.database?.delete(fromTable: dream_adjustIdent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
