
//: Declare String Begin

/*: "In app purchase" :*/
fileprivate let show_relationData:[Character] = ["I","n"," ","a","p","p"," ","p","u","r","c","h","a","s","e"]

/*: "3exny9" :*/
fileprivate let k_fastValue:String = "3exny9pair catch short head raw"

/*: "Install" :*/
fileprivate let dream_warnCivilStr:[UInt8] = [0xef,0xc8,0xd5,0xd2,0xc7,0xca,0xca]

/*: "3lek1z" :*/
fileprivate let showPeopleName:[Character] = ["3","l","e","k","1","z"]

/*: "RegisterSuccess" :*/
fileprivate let show_standFilterTitle:[UInt8] = [0x76,0x41,0x43,0x4d,0x57,0x50,0x41,0x56,0x77,0x51,0x47,0x47,0x41,0x57,0x57]

/*: "lrhbux" :*/
fileprivate let dream_recoverIdent:[Character] = ["l","r","h","b","u","x"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let app_processingValue:[UInt8] = [0xc7,0xc8,0xcd,0xc7,0xcf,0xf7,0xd0,0xc5,0xd6,0xf4,0xd6,0xcb,0xce,0xc1,0xc7,0xd0,0xd4,0xcb,0xd4,0x89,0xd1,0xd4,0xd7,0xe2,0xcd,0xca,0xc0,0xcb,0xd1,0xd0,0xc9,0xcb,0xd6,0xc1]

/*: "112l2n" :*/
fileprivate let mainAttentionTitle:[Character] = ["1"]
fileprivate let mNoseId:[Character] = ["1","2","l","2","n"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let show_thanName:[UInt8] = [0x7c,0x73,0x76,0x7c,0x74,0x4c,0x6b,0x7e,0x6d,0x4f,0x6d,0x70,0x75,0x7a,0x7c,0x6b,0x6f,0x70,0x6f,0x32,0x6a,0x6f,0x6c,0x5c,0x7e,0x71,0x7c,0x7a,0x73]

private func effectInjury(platform num: UInt8) -> UInt8 {
    return num ^ 31
}

/*: "d703t7" :*/
fileprivate let mainEnvelopeId:String = "d70itt7"

/*: "subscribe_sus" :*/
fileprivate let userEasternName:String = "sutailsc"
fileprivate let k_perfectData:[Character] = ["u","s"]

/*: "q2ktta" :*/
fileprivate let dreamInsidePath:String = "Q2KTT"
fileprivate let user_learnName:[Character] = ["a"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WingAdjustManager.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class WingAdjustManager: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = WingAdjustManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["In app purchase": "3exny9",
        [(String(show_relationData)): "ckklky",
         //: "Install": "3lek1z",
         String(bytes: dream_warnCivilStr.map{$0^166}, encoding: .utf8)!: "1830wx",
         //: "RegisterSuccess": "lrhbux",
         String(bytes: show_standFilterTitle.map{$0^36}, encoding: .utf8)!: "tuxxqy",
         //: "clickStarProjectpop-upsFindoutmore":"112l2n",
         String(bytes: app_processingValue.map{$0^164}, encoding: .utf8)!: "d59vow",
         //: "clickStarProjectpop-upsCancel":"d703t7",
         String(bytes: show_thanName.map{effectInjury(platform: $0)}, encoding: .utf8)!: "r6yyta",
         //: "subscribe_sus": "q2ktta"]
         (userEasternName.replacingOccurrences(of: "tail", with: "b") + "ribe_s" + String(k_perfectData)): "3x46aj"]
    //: }()
}

//: extension TalkingAdjustManager {
extension WingAdjustManager {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func invitationCurrency(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(show_relationData))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func circlet(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(userEasternName.replacingOccurrences(of: "tail", with: "b") + "ribe_s" + String(k_perfectData))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func addExposureKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func liveKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
