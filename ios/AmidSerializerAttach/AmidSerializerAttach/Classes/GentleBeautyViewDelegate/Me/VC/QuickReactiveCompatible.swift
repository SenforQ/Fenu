
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let app_arrayName:[UInt8] = [0xd1,0xca,0xa6,0xc9,0xc5,0xd2]

fileprivate func destroyFlow(massive num: UInt8) -> UInt8 {
    let value = Int(num) - 100
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bannerList" :*/
fileprivate let app_recommendationData:String = "feedbacknn"

/*: "icon_me_chatsettings" :*/
fileprivate let show_productionIdent:String = "blank permissionicon_m"
fileprivate let userWithoutFormat:String = "ttisticks"

/*: "icon_me_automatic" :*/
fileprivate let show_universalValue:String = "length opening shadow analysis imitationicon_me"
fileprivate let show_rootMassiveFormat:String = "success dominant_aut"

/*: "icon_me_settings" :*/
fileprivate let kPriorityMessage:String = "irobotn"
fileprivate let app_distantFormat:[Character] = ["t","t","i","n","g","s"]

/*: "icon_me_tc" :*/
fileprivate let mainOccurData:String = "icfataln"
fileprivate let showProgramMessage:String = "present"

/*: "icon_me_videoSet" :*/
fileprivate let mVisualUrl:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t"]

/*: "icon_me_bs" :*/
fileprivate let show_artifactUrl:String = "icon_me_arrive secure translate"
fileprivate let showAmberFormat:String = "BS"

/*: "Enter " :*/
fileprivate let notiFairlyMsg:[Character] = ["E","n","t","e","r"]
fileprivate let kResistanceFormat:[Character] = [" "]

/*: "Settings" :*/
fileprivate let k_noticeUrl:String = "Settingsbreak show panel analyze create"

/*: " and open " :*/
fileprivate let userCommitConductData:String = " andshe disable reference"

/*: "Camera" :*/
fileprivate let dreamRetId:[Character] = ["C","a","m","e","r","a"]

/*: " permission to use this function normally" :*/
fileprivate let mainRelatedExplainPath:[UInt8] = [0x45,0x15,0x0,0x17,0x8,0xc,0x16,0x16,0xc,0xa,0xb,0x45,0x11,0xa,0x45,0x10,0x16,0x0,0x45,0x11,0xd,0xc,0x16,0x45,0x3,0x10,0xb,0x6,0x11,0xc,0xa,0xb,0x45,0xb,0xa,0x17,0x8,0x4,0x9,0x9,0x1c]

/*: "Cancel" :*/
fileprivate let show_joinKey:[Character] = ["C"]
fileprivate let appImportantMagnitudeTitle:[Character] = ["a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class QuickReactiveCompatible: FlexibleViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(LogColumnConvertible, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.landmarkBalance()
        //: reloadLocalData()
        hairValue()
        //: func__reqBanner()
        localTurn()
        //: setupSubviews()
        merelyBass()
        //: setupSubViewsConstraint()
        steerAlongside()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(bracket),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: dream_purchaseTitle,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(butteEffectivelyWithout),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: dream_tableUrl,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        butteEffectivelyWithout()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(RecordTwoCompartmentThen.self, forCellReuseIdentifier: RecordTwoCompartmentThen.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(VisitorDataSource.self, forCellReuseIdentifier: VisitorDataSource.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(ProposalView.self, forCellReuseIdentifier: ProposalView.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(EditionThen.self, forCellReuseIdentifier: EditionThen.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(ToneThen.self, forCellReuseIdentifier: ToneThen.className())
        //: table.addHeaderRefresh { [weak self] in
        table.amplitudeModulation { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.decentElement()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [CutModelType] = //: return Array<CutModelType>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension QuickReactiveCompatible {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func decentElement() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        butteEffectivelyWithout()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func butteEffectivelyWithout() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        DrawReactiveCompatible.reStart { _, _, _ in
            //: self.reloadLocalData()
            self.hairValue()
            //: self.tableView.endRefresh()
            self.tableView.speedReload()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if TapBecauseLiveManager.resolutionShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: mainScaleText, object: nil, userInfo: [String(bytes: app_arrayName.map{destroyFlow(massive: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func localTurn() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        ObtainRequestManager().serviceMinimum(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(app_recommendationData.replacingOccurrences(of: "feedback", with: "ba") + "erList")] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = CutModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func hairValue() {
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(show_productionIdent.suffix(6)) + "e_chatse" + userWithoutFormat.replacingOccurrences(of: "stick", with: "ng"))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(show_universalValue.suffix(7)) + String(show_rootMassiveFormat.suffix(4)) + "omatic")),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (kPriorityMessage.replacingOccurrences(of: "robot", with: "co") + "_me_se" + String(app_distantFormat)))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (kPriorityMessage.replacingOccurrences(of: "robot", with: "co") + "_me_se" + String(app_distantFormat)))]
        }
        //: if AdministratorThen.share.appUserConfigMode.showTaskCenter {
        if AdministratorThen.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (mainOccurData.replacingOccurrences(of: "fatal", with: "o") + "_me_" + showProgramMessage.replacingOccurrences(of: "present", with: "tc"))), at: 0)
        }
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(mVisualUrl))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if user_progressId, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(show_artifactUrl.prefix(8)) + showAmberFormat.lowercased())), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension QuickReactiveCompatible {
    //: @objc func pushEdit() {
    @objc func bracket() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = ProfilesVc()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func become() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        AsidePermissionTool.goopBlock(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isFind == false else {
                guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.iconThemeBringBackPlace(showMsg: m_buildNearbyData)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = FireOpenicialViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                GentleAlertShow.aboveSixth(title: nil, message: (String(notiFairlyMsg) + String(kResistanceFormat)) + "\"" + (String(k_noticeUrl.prefix(8))) + "\"" + (String(userCommitConductData.prefix(4)) + " open ") + "\"" + (String(dreamRetId)) + "\"" + String(bytes: mainRelatedExplainPath.map{$0^101}, encoding: .utf8)!.localized, leftBtnTitle: (String(show_joinKey) + String(appImportantMagnitudeTitle)).localized, rightBtnTitle: (String(k_noticeUrl.prefix(8))).localized) {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension QuickReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ToneThen.className(), for: indexPath) as! ToneThen
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.cooperative(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.hesitateObserve()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: RecordTwoCompartmentThen.className(), for: indexPath) as! RecordTwoCompartmentThen
            //: cell.setViewData()
            cell.molarConcentrationPlace()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: VisitorDataSource.className(), for: indexPath) as! VisitorDataSource
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.rear(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ProposalView.className(), for: indexPath) as! ProposalView
            //: cell.setViewData()
            cell.epicLab()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: EditionThen.className(), for: indexPath) as! EditionThen
            //: cell.setViewData()
            cell.nearNote()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = FlowViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = FlowViewController()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = WaitRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            DumpPushManager.share.anvil(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            become()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = WarnViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension QuickReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func merelyBass() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func steerAlongside() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
