
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_sunIdent:[UInt8] = [0x41,0x46,0x41,0x5c,0x0,0x4b,0x47,0x4c,0x4d,0x5a,0x12,0x1,0x8,0x40,0x49,0x5b,0x8,0x46,0x47,0x5c,0x8,0x4a,0x4d,0x4d,0x46,0x8,0x41,0x45,0x58,0x44,0x4d,0x45,0x4d,0x46,0x5c,0x4d,0x4c]

private func violationGenerate(can num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "#EEEEEE" :*/
fileprivate let mOnicialUrl:[Character] = ["#","E","E","E","E"]
fileprivate let app_successfullyPath:String = "pea"

/*: "tabBar" :*/
fileprivate let m_userFormat:String = "tabBarlate for"

/*: "home" :*/
fileprivate let main_guiltyId:[Character] = ["h","o","m","e"]

/*: "user" :*/
fileprivate let appRemarkValue:String = "useresponse"

/*: "icon" :*/
fileprivate let notiYearName:[Character] = ["i","c","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PickBarController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class PickBarController: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: BarViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = PubTabBar()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: BarViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            dosage()
            //: ProgressHUD.show()
            VillageView.projectShow()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            DrawReactiveCompatible.reStart { succeed, _, _ in
                //: ProgressHUD.dismiss()
                VillageView.statusDismiss()
                //: EdgeMsgListener.shared.func__addDelegate(self)
                EdgeMsgListener.shared.requireExpected(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.packaging()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.draftEncounterOrigin(itemTypes: tarItemTypes as! [ExactlyNameConvertible])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.authorize(itemTypes: tarItemTypes)
                //: if AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue && AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue && AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.progressDestroy(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.outpouringSort()

                //: if succeed && AdministratorThen.share.loginUserMode.remindBindEmail == true {
                if succeed && AdministratorThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: DumpPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        DumpPushManager.share.limitWith(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            authorize(itemTypes: self.packaging())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_sunIdent.map{violationGenerate(can: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(clothes),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: user_gameValue,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(analysisImage),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: mainReasonKey,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(betweenFinish),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: noti_viewTitle,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(analysisImage),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: k_featureMinePagePath,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(charmExecute),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: m_endLimitMsg,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: appMineMessage - dream_displayUrl), size: CGSize(width: noti_senseContent, height: dream_displayUrl))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func dosage() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: appMineMessage - dream_displayUrl), size: CGSize(width: noti_senseContent, height: dream_displayUrl))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.itsyBitsy(color: .white, size: CGSize(width: noti_senseContent, height: dream_displayUrl))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.itsyBitsy(color: UIColor(hex: (String(mOnicialUrl) + app_successfullyPath.replacingOccurrences(of: "pea", with: "EE")))!, size: CGSize(width: noti_senseContent, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.bossInvitation()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(m_userFormat.prefix(6))))
    }

    //: func tabBarConentTypes() -> NSArray {
    func packaging() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == BarViewType.Login {
            //: return [TabBarItemType.Login]
            return [ExactlyNameConvertible.Login]
            //: } else {
        } else {
            //: if AdministratorThen.share.appStatus == AppSkinStatus.special.rawValue {
            if AdministratorThen.share.appStatus == BecauseMultiplierTarget.special.rawValue {
                //: return [TabBarItemType.Social,
                return [ExactlyNameConvertible.Social,
                        //: TabBarItemType.Moment,
                        ExactlyNameConvertible.Moment,
                        //: TabBarItemType.Message,
                        ExactlyNameConvertible.Message,
                        //: TabBarItemType.Account]
                        ExactlyNameConvertible.Account]
                //: } else {
            } else {
                //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue {
                if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [ExactlyNameConvertible.Social,
                            //: TabBarItemType.Moment,
                            ExactlyNameConvertible.Moment,
                            //: TabBarItemType.Live,
                            ExactlyNameConvertible.Live,
                            //: TabBarItemType.Message,
                            ExactlyNameConvertible.Message,
                            //: TabBarItemType.Account]
                            ExactlyNameConvertible.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [ExactlyNameConvertible.Social,
                            //: TabBarItemType.Moment,
                            ExactlyNameConvertible.Moment,
                            //: TabBarItemType.Randow,
                            ExactlyNameConvertible.Randow,
                            //: TabBarItemType.Message,
                            ExactlyNameConvertible.Message,
                            //: TabBarItemType.Account]
                            ExactlyNameConvertible.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func authorize(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = parsnipOrType(itemType: itemType as! ExactlyNameConvertible)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = MarkHasDelegate(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! ExactlyNameConvertible)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func parsnipOrType(itemType: ExactlyNameConvertible) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = TwoObjectProtocol()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = TaMechanismViewController()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = MessageNavigationDelegate()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = QuickReactiveCompatible()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = HeapThen()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = PepRecognizerDelegate()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! MarkHasDelegate
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.balanceOf(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension PickBarController {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func charmExecute() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        thenController()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        progressDestroy(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = springEquinox(), vc is TwoObjectProtocol {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! TwoObjectProtocol).videoSecond()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func count() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard LanceManager.doingResource().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == AdministratorThen.share.loginUid {
            if String(LanceManager.doingResource().partyModel.streamerInfo.uid) == AdministratorThen.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                LanceManager.doingResource().media()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                iconThemeBringBackPlace(showMsg: main_accuracyFormat)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard TapBecauseLiveManager.resolutionShared().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            iconThemeBringBackPlace(showMsg: appLineMsg)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = PickSuiteView()
        //: tabView.show()
        tabView.gain()
    }

    //: func func__configViewDidLoad() {
    func outpouringSort() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        FairlyFindManager.share.capablenessManner()
        //: AppManagerRequest.func__reportDeviceID()
        DrawReactiveCompatible.commandThread()
        //: func__getLoginUserConfig(true)
        clothes(true)
    }

    //: func selectTabbar(type: Int) {
    func progressDestroy(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func analysisImage() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.stateRandom()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func betweenFinish() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard AsidePermissionTool.backing() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = noti_foundData.bool(forKey: kInformationPath)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            TapBecauseLiveManager.resolutionShared().andHandler()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        noti_foundData.set(true, forKey: kInformationPath)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = RecordViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func maleDesign(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.bagSample(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func fieldWitch() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        AdviceLandscapeReactiveCompatible.shared.tapSocket()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func metalanguage(type: ExactlyNameConvertible = .Social) -> Bool {
        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else { return false }
        //: guard AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue else { return false }
        //: guard AdministratorThen.share.appUserConfigMode.userCountryType == 4 else { return false }
        guard AdministratorThen.share.appUserConfigMode.userCountryType == 4 else { return false }
        //: guard AdministratorThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard AdministratorThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !LanceManager.doingResource().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !TapBecauseLiveManager.resolutionShared().isLive,
              //: !TalkingSocketManager.shared.isFind,
              !AdviceLandscapeReactiveCompatible.shared.isFind,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !AdviceLandscapeReactiveCompatible.shared.isCalling else { return false }
        //: let arr = AdministratorThen.share.appUserConfigMode.popLiveTabArr
        let arr = AdministratorThen.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ShrinkWindowManager.shared.eon()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension PickBarController {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func clothes(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        DrawReactiveCompatible.bubbleQuote { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.fieldWitch()
                //: if AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.systemTransform()
                    //: self.needShowLiveAlertView()
                    self.metalanguage()
                    //: self.func__selectClubTabbar()
                    self.beforeFunc()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.protectiveness()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func beforeFunc() {
        //: if AdministratorThen.share.loginUserMode.jumpType == 1 {
        if AdministratorThen.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        maleDesign(isHidde: true)
        //: if AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue, AdministratorThen.share.appUserConfigMode.homeTab == "home" {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue, AdministratorThen.share.appUserConfigMode.homeTab == (String(main_guiltyId)) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            progressDestroy(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            maleDesign(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func protectiveness() {
        //: guard AdministratorThen.share.loginUserMode.updateInfo == true else {
        guard AdministratorThen.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = ShrinkWindowManager.shared
        //: manager.setHomePopUpWindow()
        manager.evaluateWindow()

        //: if AdministratorThen.share.loginUserMode.jumpType == 2, AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue {
        if AdministratorThen.share.loginUserMode.jumpType == 2, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            TapThen.shared.recent()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension PickBarController {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if AdministratorThen.share.appStatus == AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appStatus == BecauseMultiplierTarget.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = ExactlyNameConvertible(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                count()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            maleDesign(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if metalanguage(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if AdministratorThen.share.appStatus == AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appStatus == BecauseMultiplierTarget.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        astern()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == ExactlyNameConvertible.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? MessageNavigationDelegate
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.snuggle()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: MessageNavigationDelegate.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! MessageNavigationDelegate).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func astern() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case ExactlyNameConvertible.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            k_hugeName.hour(eventID: userSuccessColorValue)
        //: case TabBarItemType.Randow.rawValue: break
        case ExactlyNameConvertible.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case ExactlyNameConvertible.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            k_hugeName.hour(eventID: dream_reasonMessage)
        //: case TabBarItemType.Message.rawValue:
        case ExactlyNameConvertible.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            k_hugeName.hour(eventID: mFaceKey)
        //: case TabBarItemType.Account.rawValue:
        case ExactlyNameConvertible.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            k_hugeName.hour(eventID: show_valueMessage)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - ConfirmMerelyManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension PickBarController: ConfirmMerelyManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func shareCount(count _: Int) {
        //: refreshUnreadIMMessageCount()
        intervalellectual()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func about(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(appRemarkValue.replacingOccurrences(of: "response", with: "r"))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(String(notiYearName))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.consumer(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func intervalellectual() {
        //: if EdgeMsgListener.shared.isConnection {
        if EdgeMsgListener.shared.isConnection {
            //: let unreadMsgCount = AdministratorThen.share.unreadMessageNum
            let unreadMsgCount = AdministratorThen.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.saveer(unread: unreadMsgCount, barType: .Message)
        }
    }
}
