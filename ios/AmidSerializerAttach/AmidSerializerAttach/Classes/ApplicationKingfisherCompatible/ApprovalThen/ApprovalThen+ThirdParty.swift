
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let main_conductMessage:[Character] = ["a","p","p","_","m","a","r","s","x","l"]
fileprivate let user_afterMsg:[Character] = ["o","g"]

/*: "Install" :*/
fileprivate let m_aspectHowActiveKey:[Character] = ["I"]
fileprivate let mainSharedUrl:[Character] = ["n","s","t","a","l","l"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let show_itPath:[Character] = ["T","X","U","G","C","B","a","s","e","初","\u{59cb}","化","：","r","e","s","u","l","t"]
fileprivate let m_capUrl:[Character] = [":"," "]

/*: , reason:  :*/
fileprivate let mLastFormat:String = "calculation normally follow fruit, reaso"
fileprivate let appFilterMightName:String = "n: mic everybody manual maybe short"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ApprovalThen+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension ApprovalThen {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func occur(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = InjuryPubTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(main_conductMessage) + String(user_afterMsg)))

        //: EdgeMsgListener.shared.func__TXSDKInit()
        EdgeMsgListener.shared.attentionGap()

        //: initADjust()
        djust()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        WingAdjustManager.share.liveKey(key: (String(m_aspectHowActiveKey) + String(mainSharedUrl)))
        //: setupTXLive()
        program()
        //: setupTXUGC()
        weeklyTxugc()

        //: guard SenseTime_Use == true else { return }
        guard user_progressId == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if PurchaseTowardReactiveCompatible.share.checkLicense() == false {
            if PurchaseTowardReactiveCompatible.share.study() == false {
                //: SenseTime_Use = false
                user_progressId = false
                //: PurchaseTowardReactiveCompatible.share.checkRemoteLicInfoWith { succeed in
                PurchaseTowardReactiveCompatible.share.restaurateurCapacity { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    user_progressId = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension ApprovalThen {
    //: private func setupTXLive() {
    private func program() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if mGreetPath.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(mGreetPath, key: dream_backgroundMsg)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func weeklyTxugc() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(mGreetPath, key: dream_backgroundMsg)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func djust() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !notiLicenseServerFormat {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = app_hugePath
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension ApprovalThen: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        ProblemBenchPoundThen.panelDetect(msg: (String(show_itPath) + String(m_capUrl)) + "\(result)" + (String(mLastFormat.suffix(7)) + String(appFilterMightName.prefix(3))) + "\(String(describing: reason)).")
    }
}
