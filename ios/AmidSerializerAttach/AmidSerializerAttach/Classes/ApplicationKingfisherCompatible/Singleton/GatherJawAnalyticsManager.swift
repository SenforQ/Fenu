
//: Declare String Begin

/*: "action" :*/
fileprivate let user_baseballMessage:[UInt8] = [0x35,0x37,0x20,0x3d,0x3b,0x3a]

/*: "category" :*/
fileprivate let show_permissionText:[UInt8] = [0x51,0x53,0x46,0x57,0x55,0x5d,0x40,0x4b]

private func easternVisible(commit num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "label" :*/
fileprivate let userSiblingTitle:String = "LABEL"

/*: "user_action" :*/
fileprivate let dreamRequireValue:String = "usebutte"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GatherJawAnalyticsManager.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class GatherJawAnalyticsManager: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = GatherJawAnalyticsManager()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func cookingStove(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func outputLabel(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: user_baseballMessage.map{$0^84}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: show_permissionText.map{easternVisible(commit: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(userSiblingTitle.lowercased())] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        earthyGroupAction(name: (dreamRequireValue.replacingOccurrences(of: "butte", with: "r") + "_action"), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func fitBy(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func earthyGroupAction(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func customAide(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
