
//: Declare String Begin

/*: "TodayIsShowRatingViewKey" :*/
fileprivate let notiCutData:String = "Todarapidly super event conversion"
fileprivate let dreamPhotoData:[Character] = ["w","R","a","t","i","n","g","V","i","e","w","K","e","y"]

/*: "IsShowAppStoreRatingGuideViewKey" :*/
fileprivate let main_runId:[UInt8] = [0xb5,0x8f,0xaf,0x94,0x93,0x8b,0xbd,0x8c,0x8c,0xaf,0x88,0x93,0x8e,0x99,0xae,0x9d,0x88,0x95,0x92,0x9b,0xbb,0x89,0x95,0x98,0x99,0xaa,0x95,0x99,0x8b,0xb7,0x99,0x85]

private func civilManual(format num: UInt8) -> UInt8 {
    return num ^ 252
}

/*: "yyyy-MM-dd" :*/
fileprivate let notiVentKey:[Character] = ["y","y","y","y","-","M","M","-","d"]
fileprivate let notiLimitData:String = "D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//: import Foundation
import Foundation
//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

//: class AppStoreRatingManager {
class PickRatingManager {
    /// 今日是否展示评分的Key
    //: private let TodayIsShowRatingViewKey = "TodayIsShowRatingViewKey"
    private let TodayIsShowRatingViewKey = (String(notiCutData.prefix(4)) + "yIsSho" + String(dreamPhotoData))
    /// 是否已经展示评分引导弹窗的Key
    //: private let IsShowAppStoreRatingGuideViewKey = "IsShowAppStoreRatingGuideViewKey"
    private let IsShowAppStoreRatingGuideViewKey = String(bytes: main_runId.map{civilManual(format: $0)}, encoding: .utf8)!
    /// 单例类
    //: static let shared = AppStoreRatingManager()
    static let shared = PickRatingManager()

    // MARK: - 公共方法

    /// 快速评分 - 应用内评分（仅评分，无评论）
    //: func requestQuickRating() {
    func agree() {
        // 每日只调用一次
        //: let date = Defaults.object(forKey: TodayIsShowRatingViewKey)
        let date = noti_foundData.object(forKey: TodayIsShowRatingViewKey)
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.recoverBirth(date: Date(), dateFormat: (String(notiVentKey) + notiLimitData.lowercased()))
        //: guard date == nil || (date as? String) != today else { return }
        guard date == nil || (date as? String) != today else { return }
        //: Defaults.set(today, forKey: TodayIsShowRatingViewKey)
        noti_foundData.set(today, forKey: TodayIsShowRatingViewKey)
        // 如果展示过引导弹窗，直接展示评分
        //: let isShowGuideView = Defaults.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        let isShowGuideView = noti_foundData.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        //: if isShowGuideView || AdministratorThen.share.appUserConfigMode.ratingReward <= 0 {
        if isShowGuideView || AdministratorThen.share.appUserConfigMode.ratingReward <= 0 {
            //: requestInAppRating()
            homeRating()
            //: return
            return
        }
        // 展示引导弹窗
        //: Defaults.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        noti_foundData.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        //: let guideView = AppStoreRatingGuideView()
        let guideView = TwoGuideView()
        //: guideView.show()
        guideView.ceratin()
        //: guideView.rightBlcok = {
        guideView.rightBlcok = {
            //: AppStoreRatingManager.shared.requestInAppRating()
            PickRatingManager.shared.homeRating()
        }
    }
}

// MARK: - 私有方法

//: private extension AppStoreRatingManager {
private extension PickRatingManager {
    /// 请求应用内评分 - iOS 13+ 优化版本
    //: func requestInAppRating() {
    func homeRating() {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            // iOS 14+ 使用新的 WindowScene API（推荐）
            //: if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                //: SKStoreReviewController.requestReview(in: windowScene)
                SKStoreReviewController.requestReview(in: windowScene)
            }
            //: } else {
        } else {
            // iOS 13.x 使用传统 API
            //: SKStoreReviewController.requestReview()
            SKStoreReviewController.requestReview()
        }
    }
}
