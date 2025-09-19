
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let dream_thinkMinorUrl:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f"]
fileprivate let userCompriseKey:String = "ailback"
fileprivate let show_signaturePath:String = "re infade step"

/*: "App" :*/
fileprivate let noti_waveTitle:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let showFeeId:String = "prarena"
fileprivate let dreamPostId:String = "beyond merge makeratEf"
fileprivate let notiMaybeUrl:String = "%resistance"

/*: "extra" :*/
fileprivate let kRateText:String = "packtra"

/*: "user" :*/
fileprivate let kLitePath:String = "useboss"

/*: "gift" :*/
fileprivate let app_calledKey:String = "gmaximumt"

/*: "fromUid" :*/
fileprivate let kAttitudeId:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let userBlindMuseName:[Character] = ["f","r","o","m","N","i","c","k","n","a","m"]
fileprivate let user_alsoSecureTitle:[Character] = ["e"]

/*: "name" :*/
fileprivate let notiOperateDeclineCollectionKey:String = "resultame"

/*: "fromHeadPic" :*/
fileprivate let k_createUrl:String = "fromHelife hand opening permission along"
fileprivate let user_riseMessage:[Character] = ["c"]

/*: "icon" :*/
fileprivate let app_guiltyKey:String = "ICON"

/*: "pid" :*/
fileprivate let m_themData:String = "piappeal"

/*: "num" :*/
fileprivate let mLapValue:String = "levelm"

/*: "pname" :*/
fileprivate let showJudgeKey:String = "pnamequally"

/*: "giftPic" :*/
fileprivate let dreamToolNoticeId:String = "giftPicaccelerate square"

/*: "comboNum" :*/
fileprivate let dream_dutyKey:String = "safe color side frontcomboNum"

/*: "iosEffect" :*/
fileprivate let appAdditionAbsValue:String = "report alter operate cookie sometimeiosEf"
fileprivate let dream_executiveMayMessage:[Character] = ["f","e","c","t"]

/*: "showType" :*/
fileprivate let notiToleranceUrl:String = "face unite cornershowType"

/*: "animationTimes" :*/
fileprivate let dream_methodMsg:String = "animake"
fileprivate let notiPadId:String = "IMES"

/*: "iosVapEffect" :*/
fileprivate let mFinishContent:String = "imitation kit area gage middleiosVa"
fileprivate let m_docStr:[Character] = ["p","E"]
fileprivate let dreamFlameUnlessId:[Character] = ["f","f","e","c","t"]

/*: "msgInfo" :*/
fileprivate let dream_lowFormat:[Character] = ["m","s","g","I","n"]
fileprivate let m_detailStr:String = "sibling"

/*: "mfBean" :*/
fileprivate let app_rapidlyZonePath:[UInt8] = [0x59,0x52,0x76,0x51,0x55,0x5a]

private func chooseCountry(ticket num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "toUser" :*/
fileprivate let dreamPartyFormat:String = "least detail operate somebodytoUser"

/*: "uid" :*/
fileprivate let main_ceremonyData:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let noti_forceMsg:String = "giftNumcell arena identify do"

/*: "nickname" :*/
fileprivate let appViolationKey:String = "NICKNAME"

/*: "Send to %@" :*/
fileprivate let showDefinitionId:String = "external visible feedback component balloonSend to"
fileprivate let mEveryoneSeeKey:String = " sale@"

/*: "Send to All Numbers" :*/
fileprivate let k_attractiveDetectStr:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N","u","m","b","e","r"]
fileprivate let user_minimizeUnknownId:String = "why"

/*: "headPic" :*/
fileprivate let dream_yearStr:String = "headPicrecognize exit safe label"

/*: "LiveGift_%@" :*/
fileprivate let dream_scenarioMustMysteryKey:[Character] = ["L","i","v","e","G","i"]
fileprivate let show_branchNeverMessage:String = "ft_%@computer ticket pretty mine rear"

/*: "toUid" :*/
fileprivate let k_pinKey:[Character] = ["t","o","U","i","d"]

/*: "PartyGift_%@" :*/
fileprivate let main_overallIdent:String = "PartyGiftplayer beautiful where"
fileprivate let noti_mediumFormat:String = "require%@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GazetteAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class GazetteAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = GazetteAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        carryingOut()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension GazetteAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func carryingOut() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: baseballTeamFile()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(dream_thinkMinorUrl) + userCompriseKey.replacingOccurrences(of: "back", with: "u") + String(show_signaturePath.prefix(5)) + " init"))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.baseballTeamFile()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func fileSomeone() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: baseballTeamFile()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.baseballTeamFile())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func baseballTeamFile() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(noti_waveTitle)))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", AdministratorThen.share.loginUserMode.userID)
        let name = String(format: (showFeeId.replacingOccurrences(of: "arena", with: "iv") + "ateCh" + String(dreamPostId.suffix(4)) + "fect" + notiMaybeUrl.replacingOccurrences(of: "resistance", with: "@")), AdministratorThen.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func clear(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.fileSomeone()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func planAnimat(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.fileSomeone()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func destinationHave(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kRateText.replacingOccurrences(of: "pack", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(kLitePath.replacingOccurrences(of: "boss", with: "r"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((app_calledKey.replacingOccurrences(of: "maximum", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<MultiMeasurable>.deserializeFrom(dict: extraDict![(app_calledKey.replacingOccurrences(of: "maximum", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kAttitudeId))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(userBlindMuseName) + String(user_alsoSecureTitle))] = user?[(notiOperateDeclineCollectionKey.replacingOccurrences(of: "result", with: "n"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(k_createUrl.prefix(6)) + "adPi" + String(user_riseMessage))] = user?[(app_guiltyKey.lowercased())]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(m_themData.replacingOccurrences(of: "appeal", with: "d"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(dreamToolNoticeId.prefix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(dream_dutyKey.suffix(8)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(appAdditionAbsValue.suffix(5)) + String(dream_executiveMayMessage))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(notiToleranceUrl.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kAttitudeId))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(userBlindMuseName) + String(user_alsoSecureTitle))] = user?[(notiOperateDeclineCollectionKey.replacingOccurrences(of: "result", with: "n"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(k_createUrl.prefix(6)) + "adPi" + String(user_riseMessage))] = user?[(app_guiltyKey.lowercased())]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(m_themData.replacingOccurrences(of: "appeal", with: "d"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(dreamToolNoticeId.prefix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(dream_dutyKey.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(appAdditionAbsValue.suffix(5)) + String(dream_executiveMayMessage))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(mFinishContent.suffix(5)) + String(m_docStr) + String(dreamFlameUnlessId))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(notiToleranceUrl.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.springEquinox() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if TapBecauseLiveManager.resolutionShared().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(dream_lowFormat) + m_detailStr.replacingOccurrences(of: "sibling", with: "fo"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: app_rapidlyZonePath.map{chooseCountry(ticket: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: mainScaleText, object: nil, userInfo: [String(bytes: app_rapidlyZonePath.map{chooseCountry(ticket: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? ExtentRecognizerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if AdministratorThen.share.loginUserMode.userID != targetId,
                    if AdministratorThen.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.pictureLocation(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? FuturismViewDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if AdministratorThen.share.loginUserMode.userID != targetId,
                    if AdministratorThen.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.norBuilder(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? PurchaseViewController {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.ratingProgramId() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.grapnel(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: LiteralViewDelegate.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: AccountAdviceViewController.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: PurchaseViewController.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! PurchaseViewController
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.ratingProgramId() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.grapnel(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.fileSomeone()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func clickIgnore(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kRateText.replacingOccurrences(of: "pack", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(kLitePath.replacingOccurrences(of: "boss", with: "r"))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(dreamPartyFormat.suffix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(main_ceremonyData))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((app_calledKey.replacingOccurrences(of: "maximum", with: "if"))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<MultiMeasurable>.deserializeFrom(dict: extraDict![(app_calledKey.replacingOccurrences(of: "maximum", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(app_calledKey.replacingOccurrences(of: "maximum", with: "if"))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(noti_forceMsg.prefix(7)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kAttitudeId))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(userBlindMuseName) + String(user_alsoSecureTitle))] = user?[(notiOperateDeclineCollectionKey.replacingOccurrences(of: "result", with: "n"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(k_createUrl.prefix(6)) + "adPi" + String(user_riseMessage))] = user?[(app_guiltyKey.lowercased())]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(m_themData.replacingOccurrences(of: "appeal", with: "d"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(appViolationKey.lowercased())] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = (String(showDefinitionId.suffix(7)) + mEveryoneSeeKey.replacingOccurrences(of: "sale", with: "%")).innerArguments(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = (String(k_attractiveDetectStr) + user_minimizeUnknownId.replacingOccurrences(of: "why", with: "s")).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(dreamToolNoticeId.prefix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(dream_dutyKey.suffix(8)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(appAdditionAbsValue.suffix(5)) + String(dream_executiveMayMessage))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(notiToleranceUrl.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kAttitudeId))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(userBlindMuseName) + String(user_alsoSecureTitle))] = user?[(appViolationKey.lowercased())]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(k_createUrl.prefix(6)) + "adPi" + String(user_riseMessage))] = user?[(String(dream_yearStr.prefix(7)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(m_themData.replacingOccurrences(of: "appeal", with: "d"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(appViolationKey.lowercased())] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = (String(showDefinitionId.suffix(7)) + mEveryoneSeeKey.replacingOccurrences(of: "sale", with: "%")).innerArguments(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = (String(k_attractiveDetectStr) + user_minimizeUnknownId.replacingOccurrences(of: "why", with: "s")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(dreamToolNoticeId.prefix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(dream_dutyKey.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(appAdditionAbsValue.suffix(5)) + String(dream_executiveMayMessage))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(mFinishContent.suffix(5)) + String(m_docStr) + String(dreamFlameUnlessId))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(notiToleranceUrl.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(main_ceremonyData))] as? Int
                //: if TalkingLiveManager.shared().isLive, AdministratorThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if TapBecauseLiveManager.resolutionShared().isLive, AdministratorThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(dream_lowFormat) + m_detailStr.replacingOccurrences(of: "sibling", with: "fo"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: app_rapidlyZonePath.map{chooseCountry(ticket: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: mainScaleText, object: nil, userInfo: [String(bytes: app_rapidlyZonePath.map{chooseCountry(ticket: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if DumpPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if DumpPushManager.share.talkVc()!.isKind(of: RaceChatController.self) {
                    //: let chatVC = DumpPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = DumpPushManager.share.talkVc() as! RaceChatController
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.componentYesterday(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func inmateReceive(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kRateText.replacingOccurrences(of: "pack", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(kLitePath.replacingOccurrences(of: "boss", with: "r"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(main_ceremonyData))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if TapBecauseLiveManager.resolutionShared().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(dream_scenarioMustMysteryKey) + String(show_branchNeverMessage.prefix(5))), extraDict?[(String(k_pinKey))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if LanceManager.doingResource().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(main_overallIdent.prefix(9)) + noti_mediumFormat.replacingOccurrences(of: "require", with: "_")), extraDict?[(String(k_pinKey))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(app_calledKey.replacingOccurrences(of: "maximum", with: "if"))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((app_calledKey.replacingOccurrences(of: "maximum", with: "if"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<MultiMeasurable>.deserializeFrom(dict: extraDict![(app_calledKey.replacingOccurrences(of: "maximum", with: "if"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(kAttitudeId))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(userBlindMuseName) + String(user_alsoSecureTitle))] = user?[(appViolationKey.lowercased())]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(k_createUrl.prefix(6)) + "adPi" + String(user_riseMessage))] = user?[(String(dream_yearStr.prefix(7)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(m_themData.replacingOccurrences(of: "appeal", with: "d"))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] = gift?[(mLapValue.replacingOccurrences(of: "level", with: "nu"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(showJudgeKey.replacingOccurrences(of: "equally", with: "e"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(dreamToolNoticeId.prefix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(dream_dutyKey.suffix(8)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(appAdditionAbsValue.suffix(5)) + String(dream_executiveMayMessage))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(mFinishContent.suffix(5)) + String(m_docStr) + String(dreamFlameUnlessId))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(notiToleranceUrl.suffix(8)))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(dream_methodMsg.replacingOccurrences(of: "make", with: "m") + "ationT" + notiPadId.lowercased())] = dictM[(mLapValue.replacingOccurrences(of: "level", with: "nu"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RaceMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.fileSomeone()
            }
        }
    }
}
