
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let mCalledResContent:String = "bg_shforehead behavior"
fileprivate let kCurScanUrl:String = "ipackagen"
fileprivate let userRetainAnimaData:String = "retired head initial_default"

/*: "#777777" :*/
fileprivate let userBuilderPath:String = "#7777"
fileprivate let dreamLibraryTrafficId:[Character] = ["7","7"]

/*: "#333333" :*/
fileprivate let app_mustUrl:String = "#fogfogfog"

/*: "Party" :*/
fileprivate let notiLabStr:String = "Partymane physical format right"

/*: "Popular" :*/
fileprivate let main_suspicionIdent:String = "society agoPopul"
fileprivate let mForestLanceName:[Character] = ["a","r"]

/*: "Nearby" :*/
fileprivate let k_followBeatUrl:String = "spark cos gaze self poseNearby"

/*: "New" :*/
fileprivate let showTowerId:[Character] = ["N","e","w"]

/*: "btn_popular_search_nor" :*/
fileprivate let mainDisagreeText:[Character] = ["b","t","n","_","p","o","p","u","l","a","r","_","s","e","a","r","c","h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let kSoonValue:String = "press scribe lifestyleicon_l"
fileprivate let mPrimaryName:[Character] = ["n","o","r"]

/*: "btn_popular_ranking_nor" :*/
fileprivate let notiActualKey:[Character] = ["b","t","n","_","p","o","p","u","l","a","r","_","r"]
fileprivate let mainForwardTitle:[Character] = ["a","n","k","i","n","g","_","n","o","r"]

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let noti_survivalFormat:[UInt8] = [0xcd,0xf9,0xf8,0xf1,0xfc,0xeb,0xfe,0xff,0xf6,0xeb,0xfe,0xf3,0xf9,0xf8,0xaa,0xf9,0xf8,0xaa,0x3,0xf9,0xff,0xfc,0xaa,0xed,0xf2,0xeb,0xf8,0xed,0xef,0xaa,0xfe,0xf9,0xaa,0xf4,0xf9,0xf3,0xf8,0xaa,0xfe,0xf2,0xef,0xaa,0xdd,0xfe,0xeb,0xfc,0xaa,0xda,0xf6,0xeb,0xf8,0xaa,0xab]

fileprivate func cycleOperate(mine num: UInt8) -> UInt8 {
    let value = Int(num) + 118
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "No, thanks" :*/
fileprivate let appHemFormat:String = "notice expected date animalNo, "

/*: "Find out more" :*/
fileprivate let kZoneKey:String = "Find othe rut combined join crush"
fileprivate let m_everStr:String = "lens"
fileprivate let dreamJoinId:[Character] = ["t"," ","m","o","r","e"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let dreamWillingContent:String = "clpastork"
fileprivate let mComputeId:String = "rdescribejec"
fileprivate let notiReadyFormat:String = "topening"
fileprivate let kCivicStr:String = "p-uptrain output medium"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let showForceTireId:[UInt8] = [0xcb,0xc4,0xc1,0xcb,0xc3,0xfb,0xdc,0xc9,0xda,0xf8,0xda,0xc7,0xc2,0xcd,0xcb,0xdc,0xd8,0xc7,0xd8,0x85,0xdd,0xd8,0xdb,0xee,0xc1,0xc6,0xcc,0xc7,0xdd,0xdc,0xc5,0xc7,0xda,0xcd]

private func hairVisible(environment num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let kRemarkData:[UInt8] = [0x3f,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x40,0x25,0x20,0x77,0x6f,0x6c,0x6c,0x41]

/*: "Cancel" :*/
fileprivate let m_includeId:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let showWhichStr:[Character] = ["S","e","t","t","i","n","g","s"]

/*: "male" :*/
fileprivate let mainAccelerateKey:[UInt8] = [0x1b,0xf,0x1a,0x13]

fileprivate func valueNet(disabled num: UInt8) -> UInt8 {
    let value = Int(num) + 82
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let dream_dutyName:String = "fcontractale"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TwoObjectProtocol.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class TwoObjectProtocol: FlexibleViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        EnableerReactiveCompatible.shared.markOf()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        EnableerReactiveCompatible.shared.unwarmedAxilla()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.atmSubviews()
        //: self.setupSubViewsConstraint()
        self.earlier()
        //: self.addNotification()
        self.parentAide()
        //: self.func__checkStarPlanNeedShow()
        self.shouldAcross()
        //: self.func__turnOnSystemNotification()
        self.counselorAdmit()
        //: self.pushIsClubVideo()
        self.morePastor()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue {
            if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue {
                //: DumpPushManager.share.func__pushUserVerifyController(toast: nil)
                DumpPushManager.share.supra(toast: nil)
            }
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        beTimer()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.scribeNumber(name: (String(mCalledResContent.prefix(5)) + "ouye_m" + kCurScanUrl.replacingOccurrences(of: "package", with: "sa") + "guang" + String(userRetainAnimaData.suffix(8)))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: mNameKey, width: noti_senseContent, height: kLocationMessage))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (userBuilderPath.capitalized + String(dreamLibraryTrafficId)))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (app_mustUrl.replacingOccurrences(of: "fog", with: "33")))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .afterDisable(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .afterDisable(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (app_mustUrl.replacingOccurrences(of: "fog", with: "33")))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: mNameKey, width: noti_senseContent, height: appMineMessage - dream_displayUrl - mNameKey)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(notiLabStr.prefix(5))).localized)
        //: array.append("Popular".localized)
        array.append((String(main_suspicionIdent.suffix(5)) + String(mForestLanceName)).localized)
        //: array.append("Nearby".localized)
        array.append((String(k_followBeatUrl.suffix(6))).localized)
        //: array.append("New".localized)
        array.append((String(showTowerId)).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(notiLabStr.prefix(5))).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = FairlyViewController()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = ExtentViewDelegate()
                //: if i == "Popular".localized {
                if i == (String(main_suspicionIdent.suffix(5)) + String(mForestLanceName)).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(k_followBeatUrl.suffix(6))).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(showTowerId)).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(mainDisagreeText))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(slide), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(kSoonValue.suffix(6)) + "ive_" + String(mPrimaryName))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(monumental), for: .touchUpInside)
        //: btn.isHidden = !(AdministratorThen.share.appStatus == AppSkinStatus.special.rawValue && AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(AdministratorThen.share.appStatus == BecauseMultiplierTarget.special.rawValue && AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(notiActualKey) + String(mainForwardTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(endMan), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension TwoObjectProtocol {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func morePastor() {
        //: if AdministratorThen.share.loginUserMode.jumpType == 1 && AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue && AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if AdministratorThen.share.loginUserMode.jumpType == 1, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue, AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: DumpPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                DumpPushManager.share.tagFeminist(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func endMan() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = AgencyPublishRecognizerDelegate()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        k_hugeName.hour(eventID: appDescriptionName)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func failureTool() {
        //: if AdministratorThen.share.appUserConfigMode.liveDialogInterval > 0 &&
        if AdministratorThen.share.appUserConfigMode.liveDialogInterval > 0,
           //: AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue &&
           AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue,
           //: AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
           AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue
        {
            //: initLiveTipsTimer()
            circleInEarly()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(AdministratorThen.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(AdministratorThen.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func coffin() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.springEquinox() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: AsideViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! AsideViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if AdministratorThen.share.appUserConfigMode.enableLive &&
        if AdministratorThen.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !TapBecauseLiveManager.resolutionShared().isLive,
           //: !TalkingSocketManager.shared.isFind &&
           !AdviceLandscapeReactiveCompatible.shared.isFind,
           //: !TalkingSocketManager.shared.isCalling {
           !AdviceLandscapeReactiveCompatible.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ShrinkWindowManager.shared.eon()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func circleInEarly() {
        //: let timeInterval = TimeInterval(AdministratorThen.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(AdministratorThen.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(coffin), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func beTimer() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func monumental() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: noti_viewTitle, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension TwoObjectProtocol {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func shouldAcross() {
        //: guard AdministratorThen.share.showWindow == true else { return }
        guard AdministratorThen.share.showWindow == true else { return }
        //: AdministratorThen.share.showWindow = false
        AdministratorThen.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        GentleAlertShow.aboveSixth(title: nil,
                                    //: message: "Congratulation on your chance to join the Star Plan !",
                                    message: String(bytes: noti_survivalFormat.map{cycleOperate(mine: $0)}, encoding: .utf8)!,
                                    //: leftBtnTitle: "No, thanks",
                                    leftBtnTitle: (String(appHemFormat.suffix(4)) + "thanks"),
                                    //: rightBtnTitle: "Find out more") {
                                    rightBtnTitle: (String(kZoneKey.prefix(6)) + m_everStr.replacingOccurrences(of: "lens", with: "u") + String(dreamJoinId)))
        {
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            WingAdjustManager.share.addExposureKey(key: (dreamWillingContent.replacingOccurrences(of: "pastor", with: "ic") + "StarP" + mComputeId.replacingOccurrences(of: "describe", with: "o") + notiReadyFormat.replacingOccurrences(of: "opening", with: "po") + String(kCivicStr.prefix(4)) + "sCancel"))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            // 跳转巨星计划页
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            DumpPushManager.share.anvil(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            WingAdjustManager.share.addExposureKey(key: String(bytes: showForceTireId.map{hairVisible(environment: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func counselorAdmit() {
        // 有随机视频，不弹出开启推送弹窗
        //: if AdministratorThen.share.loginUserMode.jumpType == 1 &&
        if AdministratorThen.share.loginUserMode.jumpType == 1,
           //: AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue &&
           AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue,
           //: AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
           AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = noti_foundData.bool(forKey: showFormalName)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        AsidePermissionTool.motivationNotification { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                noti_foundData.set(true, forKey: showFormalName)
                //: TalkingAlertShow.alert(title: nil,
                GentleAlertShow.aboveSixth(title: nil,
                                            //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                            message: String(bytes: kRemarkData.reversed(), encoding: .utf8)!.innerArguments(noti_detailStr),
                                            //: leftBtnTitle: "Cancel".localized,
                                            leftBtnTitle: (String(m_includeId)).localized,
                                            //: rightBtnTitle: "Settings".localized) {
                                            rightBtnTitle: (String(showWhichStr)).localized)
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

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func slide() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = CutViewDelegate()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        k_hugeName.hour(eventID: main_meValue)
    }

    /// 切换到party
    //: func switchParty() {
    func videoSecond() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension TwoObjectProtocol {
    /// 添加通知
    //: private func addNotification() {
    private func parentAide() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        EnableerReactiveCompatible.shared.concernedNotifications()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(failureTool),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: k_clickId,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(beTimer),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: appVoiceUnderText,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension TwoObjectProtocol: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            k_hugeName.hour(eventID: "\(m_showId)_\(AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: mainAccelerateKey.map{valueNet(disabled: $0)}, encoding: .utf8)! : (dream_dutyName.replacingOccurrences(of: "contract", with: "em")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? ExtentViewDelegate
            //: popularVC?.showSettingsAlertView()
            popularVC?.showView() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            k_hugeName.hour(eventID: noti_needStr)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            k_hugeName.hour(eventID: notiWithoutWindowDomainName)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension TwoObjectProtocol: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension TwoObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func atmSubviews() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func earlier() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + mNameKey)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
