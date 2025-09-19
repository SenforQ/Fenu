
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let kRateMsg:String = "separate runbg_"
fileprivate let main_quicklyTitle:String = "memissmiss"

/*: "777777" :*/
fileprivate let app_quietPath:[Character] = ["7","7","7","7","7","7"]

/*: "Messages" :*/
fileprivate let notiLargeKingValue:[Character] = ["M","e"]
fileprivate let k_herPath:String = "ssduringes"

/*: "Who like me" :*/
fileprivate let m_tireFormat:String = "Who lsoon along import trail"

/*: "Call" :*/
fileprivate let k_marginData:[Character] = ["C","a","l","l"]

/*: "#FF2348" :*/
fileprivate let show_roseId:String = "leaf"
fileprivate let k_labKey:[Character] = ["F","F","2","3","4","8"]

/*: "Current network unavailable" :*/
fileprivate let appNobodyData:String = "must tentCurrent"
fileprivate let k_backValue:[Character] = [" ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a","b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let notiThanName:String = "icon_ynearby course complexity tolerance multiple"
fileprivate let mRadioAccountMessage:[Character] = ["i"]
fileprivate let userLapUrl:String = "du_prepure coat place"

/*: "transform.rotation" :*/
fileprivate let app_themePresentIdent:[Character] = ["t","r","a","n","s","f"]
fileprivate let userEditData:String = "orm.prepare ping total merely"

/*: "transform.scale" :*/
fileprivate let app_attentionValue:String = "sitransfor"
fileprivate let m_stackMsg:[Character] = ["m",".","s","c","a","l","e"]

/*: "zoom&shake" :*/
fileprivate let k_physicalFormat:String = "ztam"

/*: "yyyy-MM-dd" :*/
fileprivate let app_tunPath:String = "airairairair"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let main_betterKey:[UInt8] = [0xb0,0x9d,0x9d,0x9e,0x86,0xd1,0xd4,0xb1,0xd1,0x85,0x9e,0xd1,0x82,0x94,0x9f,0x95,0xd1,0x88,0x9e,0x84,0xd1,0x9f,0x9e,0x85,0x98,0x97,0x98,0x92,0x90,0x85,0x98,0x9e,0x9f,0x82,0xce]

private func logFragment(against num: UInt8) -> UInt8 {
    return num ^ 241
}

/*: "Cancel" :*/
fileprivate let user_drawingMsg:String = "Canceltender forest there distinguish"

/*: "Settings" :*/
fileprivate let showAnniversaryKey:String = "current"
fileprivate let kPropertyUrl:String = "ettinknow"

/*: "badNumber" :*/
fileprivate let showDeadlineIdent:[Character] = ["b","a","d","N","u"]
fileprivate let user_wordId:String = "mcarrierer"

/*: "isConnection" :*/
fileprivate let user_warningOrientationMessage:[Character] = ["i","s","C","o","n","n","e","c"]
fileprivate let app_additionalText:String = "TION"

/*: "networkStatus" :*/
fileprivate let showSweetData:String = "ntumblework"
fileprivate let mContactRetKey:[Character] = ["S","t","a","t","u","s"]

/*: "unreadMessageNum" :*/
fileprivate let show_breadTitle:String = "unreadMuntil with describe greatest"
fileprivate let mRecoverStr:String = "bridgessa"
fileprivate let mainSourceMaybeRelatedMsg:[Character] = ["g","e","N","u","m"]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let noti_coalTitle:[UInt8] = [0xda,0x5,0xb6,0xf,0x5,0xb,0xb6,0xd,0xf7,0x4,0xa,0xb6,0xa,0x5,0xb6,0x3,0xf7,0x8,0x1,0xb6,0xf7,0x2,0x2,0xb6,0x3,0xfb,0x9,0x9,0xf7,0xfd,0xfb,0x9,0xb6,0xf7,0x9,0xb6,0x8,0xfb,0xf7,0xfa,0xd5]

fileprivate func statementPlayer(scenario num: UInt8) -> UInt8 {
    let value = Int(num) + 106
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "消息列表一键已读失败：code: :*/
fileprivate let app_announcementMsg:String = "消息\u{5217}\u{8868}一"
fileprivate let appDueIdent:[Character] = ["：","c","o","d","e",":"]

/*: , desc: :*/
fileprivate let m_conGuidancePath:[Character] = [","," ","d","e","s"]
fileprivate let userListText:[Character] = ["c",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageNavigationDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class MessageNavigationDelegate: FlexibleViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        runningFemale()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        lustAfter()
        //: bindInteraction()
        dotWith()
        //: func__turnOnSystemNotification()
        clubNotification()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: 100 + appServerSensePath))
        //: colorV.image = UIImage.BundleImageNamed(name: "bg_message_top")
        colorV.image = UIImage.scribeNumber(name: (String(kRateMsg.suffix(3)) + main_quicklyTitle.replacingOccurrences(of: "miss", with: "s") + "age_top"))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: HokumQuickLightReactiveCompatible = {
        //: let V = TalkingNoticeTipView()
        let V = HokumQuickLightReactiveCompatible()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: MerelyViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = MerelyViewDelegate()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .afterDisable(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .afterDisable(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(app_quietPath)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.manualColor()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [FlexibleViewController] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, VisitorViewController()]
        //: if AdministratorThen.share.loginUserMode.callTabSwitch == 1 {
        if AdministratorThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(ExtentCantViewDelegate(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: ChatViewDelegate = {
        //: let vc = TalkingChatListViewController()
        let vc = ChatViewDelegate()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(notiLargeKingValue) + k_herPath.replacingOccurrences(of: "during", with: "ag")).localized, (String(m_tireFormat.prefix(5)) + "ike me").localized]
        //: if AdministratorThen.share.loginUserMode.callTabSwitch == 1 {
        if AdministratorThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert((String(k_marginData)).localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: appServerSensePath, width: noti_senseContent, height: 30))
        //: tipView.font = UIFont.pingfangRugularFont(fontSize: 14)
        tipView.font = UIFont.soil(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (show_roseId.replacingOccurrences(of: "leaf", with: "#") + String(k_labKey)))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(appNobodyData.suffix(7)) + String(k_backValue)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: SignalView = {
        //: let numbLabel = BadgeLab()
        let numbLabel = SignalView()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: SignalView = {
        //: let numbLabel = BadgeLab()
        let numbLabel = SignalView()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(notiThanName.prefix(6)) + String(mRadioAccountMessage) + String(userLapUrl.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.scribeNumber(name: (String(notiThanName.prefix(6)) + String(mRadioAccountMessage) + String(userLapUrl.prefix(6)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - TowardNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension MessageNavigationDelegate: TowardNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func squareElect(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: ChatViewDelegate.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            runningFemale()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: VisitorViewController.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            k_hugeName.hour(eventID: user_addFormat)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension MessageNavigationDelegate {
    //: func setIsTopAll() {
    func snuggle() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? ChatViewDelegate
            //: vc?.resetToTopItemView()
            vc?.tagByErr()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.profileLast(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func suspendInclude() {
        //: if AdministratorThen.share.networkStatus != .Unavailable && EdgeMsgListener.shared.isConnection {
        if AdministratorThen.share.networkStatus != .Unavailable, EdgeMsgListener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func noneMidNum(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func runningFemale() {
        //: let unreadMsgCount = AdministratorThen.share.unreadMessageNum
        let unreadMsgCount = AdministratorThen.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: mainEventId) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.arraySurvival()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func arraySurvival() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (String(app_themePresentIdent) + String(userEditData.prefix(4)) + "rotation"))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (app_attentionValue.replacingOccurrences(of: "sit", with: "t") + String(m_stackMsg)))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (k_physicalFormat.replacingOccurrences(of: "ta", with: "oo") + "&shake"))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func clubNotification() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        AsidePermissionTool.motivationNotification { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.yearFinishRevenue(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.recoverBirth(date: Date(), dateFormat: (app_tunPath.replacingOccurrences(of: "air", with: "y") + "-MM-dd"))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = noti_foundData.string(forKey: k_succeedRandomContent), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.yearFinishRevenue(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.yearFinishRevenue(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = noti_foundData.bool(forKey: app_blockMessage)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        noti_foundData.set(true, forKey: app_blockMessage)
                        //: TalkingAlertShow.alert(title: nil,
                        GentleAlertShow.aboveSixth(title: nil,
                                                    //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                    message: String(bytes: main_betterKey.map{logFragment(against: $0)}, encoding: .utf8)!.innerArguments(noti_detailStr),
                                                    //: leftBtnTitle: "Cancel".localized,
                                                    leftBtnTitle: (String(user_drawingMsg.prefix(6))).localized,
                                                    //: rightBtnTitle: "Settings".localized) {
                                                    rightBtnTitle: (showAnniversaryKey.replacingOccurrences(of: "current", with: "S") + kPropertyUrl.replacingOccurrences(of: "know", with: "gs")).localized)
                        {
                            //: TalkingAlertShow.hideAlert()
                            GentleAlertShow.someButton()
                            //: return
                            //: } rightBlock: {
                        } rightBlock: {
                            //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                            if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                                //: UIApplication.shared.open(settingsUrl)
                                UIApplication.shared.open(settingsUrl)
                            }
                        }
                    }
                }
            }
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func yearFinishRevenue(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(mNameKey)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = appMineMessage - mNameKey - dream_displayUrl
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(mNameKey + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = appMineMessage - self.noticeView.bottom - dream_displayUrl
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension MessageNavigationDelegate {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func third(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(showDeadlineIdent) + user_wordId.replacingOccurrences(of: "carrier", with: "b"))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension MessageNavigationDelegate {
    /// UI
    //: private func createUI() {
    private func lustAfter() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(mNameKey)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(m_tireFormat.prefix(5)) + "ike me").localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(notiLargeKingValue) + k_herPath.replacingOccurrences(of: "during", with: "ag")).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func dotWith() {
        //: EdgeMsgListener.shared.rx
        EdgeMsgListener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(user_warningOrientationMessage) + app_additionalText.lowercased()))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.suspendInclude()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: AdministratorThen.share.rx.observeWeakly(Int.self, "networkStatus")
        AdministratorThen.share.rx.observeWeakly(Int.self, (showSweetData.replacingOccurrences(of: "tumble", with: "et") + String(mContactRetKey)))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.suspendInclude()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: AdministratorThen.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        AdministratorThen.share.rx.observeWeakly(Int.self, (String(show_breadTitle.prefix(7)) + mRecoverStr.replacingOccurrences(of: "bridge", with: "e") + String(mainSourceMaybeRelatedMsg)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.noneMidNum(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = GainGageAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                GentleAlertShow.begNativeConfig(message: String(bytes: noti_coalTitle.map{statementPlayer(scenario: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(user_drawingMsg.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: mainEventId)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        ProblemBenchPoundThen.panelDetect(msg: (app_announcementMsg + "键已读失\u{8d25}" + String(appDueIdent)) + "\(code)" + (String(m_conGuidancePath) + String(userListText)) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(third(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: showMarginPackageStr,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.recoverBirth(date: Date(), dateFormat: (app_tunPath.replacingOccurrences(of: "air", with: "y") + "-MM-dd"))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            noti_foundData.set(today, forKey: k_succeedRandomContent)
            //: self.func__hideNotificationTipView(hide: true)
            self.yearFinishRevenue(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.clubNotification()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
