
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let main_answerTireStr:String = "/disinsert express your stretch"
fileprivate let app_everyoneFormat:String = "a secure remain director guiltyngePlu"
fileprivate let main_mannerData:String = "s/indconcentration alongside interval"

/*: "PremiumStarPlanBanner" :*/
fileprivate let mainFundamentalText:String = "picture together trim post groupPremiu"
fileprivate let k_perfectText:String = "lanBaany wave traffic way drawing"

/*: "uid" :*/
fileprivate let userHearData:String = "uuserd"

/*: "mfChatGift" :*/
fileprivate let app_sufficientTitle:String = "method broad first front exhibitmfChatGif"
fileprivate let userCollectionContent:[Character] = ["t"]

/*: "mfChat" :*/
fileprivate let dreamEffectData:String = "mfChatnothing representative delivery"

/*: "user" :*/
fileprivate let noti_communicationContent:String = "basicer"

/*: "Please verification first" :*/
fileprivate let noti_allMoreKey:[Character] = ["P","l","e","a","s","e"]
fileprivate let noti_routeSmallName:String = "contain moment example ver"
fileprivate let user_requestFordHesitateTitle:String = "ion fego patient man home may"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CutModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct CutModelType: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension CutModelType {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func signCopernicanSystem(model: CutModelType) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(main_answerTireStr.prefix(4)) + "t/lou" + String(app_everyoneFormat.suffix(6)) + String(main_mannerData.prefix(5)) + "ex.html")) {
                //: DumpPushManager.share.func__pushToSubscribePageWebVC()
                DumpPushManager.share.annualReward()
                //: return
                return
            }
            //: DumpPushManager.share.func__pushToWebVC(urlStr: model.url)
            DumpPushManager.share.noneControlInstall(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(mainFundamentalText.suffix(6)) + "mStarP" + String(k_perfectText.prefix(5)) + "nner")) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                CutModelType.byContain()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (userHearData.replacingOccurrences(of: "user", with: "i")) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(app_sufficientTitle.suffix(9)) + String(userCollectionContent))) { // 私聊打开礼物面板
                    //: DumpPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    DumpPushManager.share.estimatedHave(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.estimated()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(dreamEffectData.prefix(6)))) { // 私聊
                    //: DumpPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    DumpPushManager.share.estimatedHave(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((noti_communicationContent.replacingOccurrences(of: "basic", with: "us"))) { // 用户详情
                    //: DumpPushManager.share.func__pushToUserDetailVC(uid: uid)
                    DumpPushManager.share.belowStreet(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = MerelyFireConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: DumpPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            DumpPushManager.share.noneControlInstall(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func byContain() {
        //: if AdministratorThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if AdministratorThen.share.loginUserMode.isTPAuth == AutomaticMeasurable.isSuccessed.rawValue ||
            //: AdministratorThen.share.loginUserMode.isRealPersonAuth == false {
            AdministratorThen.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if AdministratorThen.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if AdministratorThen.share.loginUserMode.premiumStarApplyStatus != ShrinkEquatable.isOnGoing.rawValue {
                //: DumpPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                DumpPushManager.share.anvil(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: DumpPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                DumpPushManager.share.anvil(webViewType: .StarPlanAudit)
            }
            //: } else if AdministratorThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if AdministratorThen.share.loginUserMode.isTPAuth == AutomaticMeasurable.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().bringHomePublishGap(showMsg: (String(noti_allMoreKey) + String(noti_routeSmallName.suffix(4)) + "ificat" + String(user_requestFordHesitateTitle.prefix(5)) + "irst").localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = ToneOfVoiceViewController()
            //: DumpPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            DumpPushManager.share.talkVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().bringHomePublishGap(showMsg: (String(noti_allMoreKey) + String(noti_routeSmallName.suffix(4)) + "ificat" + String(user_requestFordHesitateTitle.prefix(5)) + "irst").localized)
            //: DumpPushManager.share.func__pushUserVerifyController(toast: nil)
            DumpPushManager.share.supra(toast: nil)
        }
    }
}
