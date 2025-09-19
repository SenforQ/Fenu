
//: Declare String Begin

/*: "http://" :*/
fileprivate let mChemistryStr:String = "http:permit don drawing"
fileprivate let appSegmentId:String = "positivepositive"

/*: "https://" :*/
fileprivate let show_trafficItemText:[Character] = ["h","t"]
fileprivate let noti_environmentFaceData:String = "tps://mode red timing"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let app_candidateName:[UInt8] = [0xcb,0xd7,0xda,0xcf,0xdd,0xd4,0xc9,0xd6,0x86,0xd2,0xcb,0xd3,0xd4,0xd5,0xde,0x9d,0xcd,0xde,0xc9,0xc8,0xd2,0xd4,0xd5,0x86,0x9e,0xfb,0x9d,0xcb,0xda,0xd8,0xd0,0xda,0xdc,0xde,0xf2,0xdf,0x86,0x9e,0xfb,0x9d,0xd9,0xce,0xd5,0xdf,0xd7,0xde,0xf2,0xdf,0x86,0x9e,0xfb]

private func sparkHesitate(exhibit num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "url" :*/
fileprivate let show_optimisticKey:[Character] = ["u","r","l"]

/*: "length" :*/
fileprivate let app_indexMessage:[Character] = ["l","e","n","g","t","h"]

/*: "getFileSize error : :*/
fileprivate let m_helloIdent:[Character] = ["g","e","t","F","i","l","e","S"]
fileprivate let noti_versionUrl:[Character] = ["i","z","e"," ","e","r","r","o","r"," ",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WaitTaskModel.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum TaskScalar: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum CandidateInsetTarget: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class WaitTaskModel: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: TaskScalar = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: CandidateInsetTarget = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: WCDBVoiceMsgTable) -> VoiceDownloadTaskModel {
    class func regenerationSign(_ tempModel: FireMsgTable) -> WaitTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = WaitTaskModel()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(mChemistryStr.prefix(5)) + appSegmentId.replacingOccurrences(of: "positive", with: "/"))) || tempModel.db_voiceUri.contains((String(show_trafficItemText) + String(noti_environmentFaceData.prefix(6)))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", CreditsThen.getAppNetVersion(), CreditsThen.getPackageID(), CreditsThen.getAppBundle())
            let otherParams = String(format: String(bytes: app_candidateName.map{sparkHesitate(exhibit: $0)}, encoding: .utf8)!, CreditsThen.plotElementHair(), CreditsThen.towerDown(), CreditsThen.outFeature())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", BubbleVisitorReactiveCompatible.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = WaitTaskModel.popularPath(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func aneModel(_ voiceInfo: [String: Any]) -> WaitTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = WaitTaskModel()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(String(show_optimisticKey))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(String(app_indexMessage))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(GatherCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(GatherCacheDefine.doFlame())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension WaitTaskModel {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func popularPath(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(m_helloIdent) + String(noti_versionUrl)) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func contactFun() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(GatherCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(GatherCacheDefine.doFlame())\(self.taskId)\(timeInterval)"
    }
}
