
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let userBorderData:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e","D","e"]
fileprivate let show_tickStr:String = "editault"

/*: "JDStatusBarStyleError" :*/
fileprivate let main_currentlyQuitData:String = "pack text my minimize portionJDStat"
fileprivate let mLaterCleanForestUrl:String = "Stylresume sometime"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let user_yetMessage:String = "pop we custody boa homeJDSta"
fileprivate let show_anniversaryVersionData:String = "gender social enhance manualStyleS"
fileprivate let notiDonTrailStr:[Character] = ["s","s"]

/*: "2AB572" :*/
fileprivate let m_leaveTitle:String = "total identity extra without2AB572"

/*: "F05E5E" :*/
fileprivate let m_nowOldLightFormat:[Character] = ["F","0","5","E","5","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func photoExample(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.ventName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(userBorderData) + show_tickStr.replacingOccurrences(of: "edit", with: "f")))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func iconThemeBringBackPlace(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.ventName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(main_currentlyQuitData.suffix(6)) + "usBar" + String(mLaterCleanForestUrl.prefix(4)) + "eError"))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func bringHomePublishGap(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.ventName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(user_yetMessage.suffix(5)) + "tusBar" + String(show_anniversaryVersionData.suffix(6)) + "ucce" + String(notiDonTrailStr)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func ventName(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.taConversion(token: showDismissText, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(m_leaveTitle.suffix(6))))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(main_currentlyQuitData.suffix(6)) + "usBar" + String(mLaterCleanForestUrl.prefix(4)) + "eError") {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(m_nowOldLightFormat)))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(m_leaveTitle.suffix(6))))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
