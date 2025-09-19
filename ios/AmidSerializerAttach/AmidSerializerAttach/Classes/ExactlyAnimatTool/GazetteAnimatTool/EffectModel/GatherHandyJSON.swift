
//: Declare String Begin

/*: "className" :*/
fileprivate let app_bitValue:String = "clacast"

/*: "nativeClassName" :*/
fileprivate let mMoveValue:[Character] = ["n","a","t","i"]
fileprivate let show_protectionValue:String = "bubble meet calendar monitor lifestyleveCla"

/*: "effectType" :*/
fileprivate let user_volumeTitle:String = "eordinaryect"

/*: "gifFile" :*/
fileprivate let appPepTitle:String = "quickly fee tun second standgifFil"
fileprivate let dreamAbsId:String = "recent"

/*: "versions" :*/
fileprivate let mainDiskMsg:[Character] = ["v","e","r","s","i","o","n","s"]

/*: "config" :*/
fileprivate let mainUnderLifeIdent:String = "ccornernfi"
fileprivate let kWarnWhiteTitle:String = "bring"

/*: "mainFile" :*/
fileprivate let kRemarkSaltFormat:String = "matag"
fileprivate let notiColorfulMessage:[Character] = ["n","F","i","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GatherHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum PublishTableConvertible: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum VisitorMeasurable: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum ExactlyScalar: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct GatherHandyJSON: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = PublishTableConvertible.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension GatherHandyJSON {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func reportDic(dic: NSDictionary) -> GatherHandyJSON {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = GatherHandyJSON()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(app_bitValue.replacingOccurrences(of: "cast", with: "ss") + "Name")] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(mMoveValue) + String(show_protectionValue.suffix(5)) + "ssName")] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(user_volumeTitle.replacingOccurrences(of: "ordinary", with: "ff") + "Type")] as? PublishTableConvertible ?? PublishTableConvertible.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(appPepTitle.suffix(6)) + dreamAbsId.replacingOccurrences(of: "recent", with: "e"))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[PublishTableConvertible.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(String(mainDiskMsg))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(mainUnderLifeIdent.replacingOccurrences(of: "corner", with: "o") + kWarnWhiteTitle.replacingOccurrences(of: "bring", with: "g"))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(app_bitValue.replacingOccurrences(of: "cast", with: "ss") + "Name")] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(mMoveValue) + String(show_protectionValue.suffix(5)) + "ssName")] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(user_volumeTitle.replacingOccurrences(of: "ordinary", with: "ff") + "Type")] as? PublishTableConvertible ?? PublishTableConvertible.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(kRemarkSaltFormat.replacingOccurrences(of: "tag", with: "i") + String(notiColorfulMessage))] as? String ?? ""
        }
        //: return model
        return model
    }
}
