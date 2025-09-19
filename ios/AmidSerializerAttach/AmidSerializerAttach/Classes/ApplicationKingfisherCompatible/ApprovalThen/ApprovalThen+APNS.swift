
//: Declare String Begin

/*: "APNS Token =  :*/
fileprivate let kClickMatchQuickPath:[Character] = ["A","P","N","S"," ","T","o"]
fileprivate let app_willValue:[Character] = ["k","e","n"," ","="," "]

/*: "APNS Token Error:  :*/
fileprivate let main_saltUrl:String = "someone level pressure fitAPNS "
fileprivate let m_publicationThirdMinimizeIdent:String = "n Errattach minimum apartment"

/*: "token =  :*/
fileprivate let user_docKey:String = "tleave"
fileprivate let notiSuspicionName:[Character] = ["k","e","n"," ","="," "]

/*: "extra" :*/
fileprivate let userSubmitRoseUrl:String = "ecollecttra"

/*: "Unable to register for remote notifications: :*/
fileprivate let showLandmarkValue:[UInt8] = [0x79,0x92,0x85,0x86,0x90,0x89,0x44,0x98,0x93,0x44,0x96,0x89,0x8b,0x8d,0x97,0x98,0x89,0x96,0x44,0x8a,0x93,0x96,0x44,0x96,0x89,0x91,0x93,0x98,0x89,0x44,0x92,0x93,0x98,0x8d,0x8a,0x8d,0x87,0x85,0x98,0x8d,0x93,0x92,0x97,0x5e]

fileprivate func moveCurve(fail num: UInt8) -> UInt8 {
    let value = Int(num) - 36
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "token" :*/
fileprivate let m_netEditText:[UInt8] = [0xcf,0xd4,0xd0,0xde,0xd5]

private func youHere(condition num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "FCMToken" :*/
fileprivate let notiBreadPath:String = "color engageFCMToken"

/*: _LocalPush" :*/
fileprivate let userDelayData:[Character] = ["_","L","o","c","a","l","P","u","s","h"]

/*: "identifier" :*/
fileprivate let mExternalIdent:[Character] = ["i","d","e","n","t","i","f","i","e","r"]

/*: "fcm_options" :*/
fileprivate let app_trainTitle:String = "fcm_oaccounting under"
fileprivate let appRedMessage:[Character] = ["p","t","i","o","n","s"]

/*: "image" :*/
fileprivate let main_farName:[UInt8] = [0xb9,0xbd,0xb1,0xb7,0xb5]

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let noti_socialValue:[UInt8] = [0x29,0x64,0x65,0x6e,0x69,0x6d,0x72,0x65,0x74,0x65,0x44,0x74,0x6f,0x6e,0x2e,0x28,0x83,0x9d,0xe6,0x88,0x8e,0xe6,0xaa,0x9c,0xe6,0xb7,0x88,0xe6,0xa8,0x94,0xe7,0x20,0x2d,0x2d,0x20,0xa5,0x9f,0xe7,0x9a,0x80,0xe9,0x81,0x80,0xe9,0xa8,0x8e,0xe6,0xb0,0x9c,0xe5,0xac,0x9c,0xe6]

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let showWeightStr:String = "本地推送commercial"
fileprivate let user_displayInviteMsg:String = "权(.dme theme distribution successfully"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let k_wageParaValue:String = "本地推送通知"
fileprivate let showPositionMsg:String = "用户未授\u{6743}"
fileprivate let mainFollowTieId:String = "over seek link pin record(.ep"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let mScenePath:String = "本\u{5730}推送\u{901a}"
fileprivate let user_freshName:[Character] = ["知"," ","-","-"," ","用","户","未","授","权"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ApprovalThen+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension ApprovalThen {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func remote(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(kClickMatchQuickPath) + String(app_willValue)) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                ProblemBenchPoundThen.panelDetect(msg: (String(main_saltUrl.suffix(5)) + "Toke" + String(m_publicationThirdMinimizeIdent.prefix(5)) + "or: ") + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (user_docKey.replacingOccurrences(of: "leave", with: "o") + String(notiSuspicionName)) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func strong(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((userSubmitRoseUrl.replacingOccurrences(of: "collect", with: "x"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(userSubmitRoseUrl.replacingOccurrences(of: "collect", with: "x"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    FairlyFindManager.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    FairlyFindManager.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func reduce(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: showLandmarkValue.map{moveCurve(fail: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func compriseQuick(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            FairlyFindManager.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            FairlyFindManager.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((userSubmitRoseUrl.replacingOccurrences(of: "collect", with: "x"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(userSubmitRoseUrl.replacingOccurrences(of: "collect", with: "x"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                FairlyFindManager.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                FairlyFindManager.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func noPress(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: m_netEditText.map{youHere(condition: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(notiBreadPath.suffix(8)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension ApprovalThen {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func simultaneously(uid: String? = nil,
                              //: title: String? = nil,
                              title: String? = nil,
                              //: body: String,
                              body: String,
                              //: imageUrl: String? = nil) {
                              imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(noti_detailStr)" + (String(userDelayData))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(String(mExternalIdent)): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    crop(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: kKeyInsertValue.generalGame(), with: dreamVoiceMarginStr)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(app_trainTitle.prefix(5)) + String(appRedMessage))] = [String(bytes: main_farName.map{$0^208}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    crop(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: noti_socialValue.reversed(), encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (showWeightStr.replacingOccurrences(of: "commercial", with: "通") + "知 -- 用户未授" + String(user_displayInviteMsg.prefix(4)) + "enied)"))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (k_wageParaValue.capitalized + " -- " + showPositionMsg + String(mainFollowTieId.suffix(4)) + "hemeral)"))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (mScenePath + String(user_freshName)))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func crop(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(String(mExternalIdent))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func assets(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
