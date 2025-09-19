
//: Declare String Begin

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let app_wholeIdent:String = "WCDB数据\u{5e93}打开"
fileprivate let noti_galleryFormat:[Character] = ["失","\u{8d25}","：","u","s","e","r","I","d","为","空","。"]

/*: "WCDB/ :*/
fileprivate let showThreeKey:String = "WCDB/currency resource day stack"

/*: "WCDB数据库打开失败： :*/
fileprivate let mPrimaryThenText:String = "WCvideoB"
fileprivate let app_unableText:String = "\u{ff1a}"

/*: "WCDB数据库成功打开： :*/
fileprivate let mDiscStr:[Character] = ["W","C","D","B","\u{6570}","\u{636e}","\u{5e93}","成"]
fileprivate let k_spanMessage:[Character] = ["功","打","开","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let appHungText:String = "WCDB\u{6570}"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let k_conversionTextureId:[Character] = ["W","C","D","B","数","据","库","：","创","建","表","\u{5931}","败","\u{3002}"]
fileprivate let userSinceData:String = "bean senseerror："

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MerelyThen.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class MerelyThen: NSObject {
    //: static let shared = WCDBManager()
    static let shared = MerelyThen()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return AdministratorThen.share.loginUserMode.userID + ".db"
        return AdministratorThen.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.scene()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func scene() {
        //: closeDatabase()
        animaFare()

        //: guard !AdministratorThen.share.loginUserMode.userID.isEmpty else {
        guard !AdministratorThen.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            ProblemBenchPoundThen.panelDetect(msg: (app_wholeIdent + String(noti_galleryFormat)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(showThreeKey.prefix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            ProblemBenchPoundThen.panelDetect(msg: (mPrimaryThenText.replacingOccurrences(of: "video", with: "D") + "\u{6570}据库打开失败" + app_unableText) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(mDiscStr) + String(k_spanMessage)) + "\(fileURL.path)")
        //: createTables()
        makeup()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func animaFare() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (appHungText + "据\u{5e93}成功关闭。"))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension MerelyThen {
    /// 创建表
    //: private func createTables() {
    private func makeup() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: userLengthName, of: GatherInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: dream_adjustIdent, of: FireMsgTable.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            ProblemBenchPoundThen.panelDetect(msg: (String(k_conversionTextureId) + String(userSinceData.suffix(6))) + "\(error).")
        }
    }
}
