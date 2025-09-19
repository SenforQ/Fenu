
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let k_linePath:String = "missing tin#201E50"

/*: "#1F1624" :*/
fileprivate let k_topicText:[Character] = ["#","1","F","1","6","2","4"]

/*: "quick_video_topview" :*/
fileprivate let mainAnotherMsg:String = "destination wayquick_"
fileprivate let notiPopularData:String = "foundationpview"

/*: "btn_back_white" :*/
fileprivate let m_thumbTurnStr:[Character] = ["b","t","n","_","b","a","c","k","_","w","h","i","t","e"]

/*: "Random Video" :*/
fileprivate let mMeasureMsg:String = "var child antiRandom V"
fileprivate let dream_tradeMsg:String = "idetip"

/*: "icon_rank_coin" :*/
fileprivate let app_rearFormat:String = "icograde"
fileprivate let user_kindProvideFormat:String = "corun"

/*: "btn_quick_back_nor" :*/
fileprivate let show_broadUniformPocketMessage:[Character] = ["b","t","n","_","q","u","i","c","k","_","b","a"]
fileprivate let app_riseContent:[Character] = ["c","k","_","n","o","r"]

/*: "icon_video_skip" :*/
fileprivate let m_railTitle:String = "icon_background distinguish regular forth unless"
fileprivate let appHostStr:String = "videsection"
fileprivate let show_breadSlowId:String = "bit distinguish force service_skip"

/*: "#9610FF" :*/
fileprivate let showCivicKey:String = "#9610FFcreative sum transport case"

/*: "#8566FF" :*/
fileprivate let appNeedUrl:String = "song complaint multiple#8566FF"

/*: "icon_coin_match_line" :*/
fileprivate let showCanMessage:[Character] = ["i","c","o","n","_","c","o","i","n","_","m","a","t","c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let m_colorFormat:[UInt8] = [0x8b,0x87,0x92,0x85,0x8e,0xaf,0x82]

private func ourselvesReverseDisc(orbit num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: "source" :*/
fileprivate let dream_dateVideoCombinedStr:[UInt8] = [0x65,0x63,0x72,0x75,0x6f,0x73]

/*: "type" :*/
fileprivate let app_draftFutureFormat:[UInt8] = [0xce,0xc3,0xca,0xdf]

private func exitUserSpec(fore num: UInt8) -> UInt8 {
    return num ^ 186
}

/*: "uid" :*/
fileprivate let user_giftUrl:String = "upod"

/*: "fromFreeCall" :*/
fileprivate let mDefinitionPath:String = "frminimumm"

/*: "cmd" :*/
fileprivate let dream_slatId:[UInt8] = [0x5d,0x53,0x5a]

private func aboveFamily(across num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "requestCall" :*/
fileprivate let user_primaryKey:String = "reqwarm"
fileprivate let mOuterFatalTitle:String = "middle main follow gaze withinestCall"

/*: "data" :*/
fileprivate let noti_readingText:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let show_speakerOffingFormat:[Character] = ["o","n","R","e","q","u","e","s","t","C","a","l"]
fileprivate let dreamMultipleId:String = "op"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsertMatchDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class InsertMatchDelegate: FlexibleViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = ConsistMeasurable() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        iterate()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        windExposureSubviews()
        //: setupSubViewsConstraint()
        confinement()
        //: refreshUI()
        ever()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(iterate),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: notiOfMsg,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        AdviceLandscapeReactiveCompatible.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        AdviceLandscapeReactiveCompatible.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.norTone(colors: [UIColor(hex: (String(k_linePath.suffix(7))))!.cgColor, UIColor(hex: (String(k_topicText)))!.cgColor], size: CGSize(width: noti_senseContent, height: appMineMessage))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.BundleImageNamed(name: "quick_video_topview")
        topView.image = UIImage.scribeNumber(name: (String(mainAnotherMsg.suffix(6)) + "video_" + notiPopularData.replacingOccurrences(of: "foundation", with: "to")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.scribeNumber(name: (String(m_thumbTurnStr))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(handle), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(mNameKey + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 17)
        titleLab.font = UIFont.imitationClotheStatement(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(mMeasureMsg.suffix(8)) + dream_tradeMsg.replacingOccurrences(of: "tip", with: "o")).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = WordOfAdviceThen()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.scribeNumber(name: (app_rearFormat.replacingOccurrences(of: "grade", with: "n") + "_rank_" + user_kindProvideFormat.replacingOccurrences(of: "run", with: "in"))), for: .normal)
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.scribeNumber(name: (app_rearFormat.replacingOccurrences(of: "grade", with: "n") + "_rank_" + user_kindProvideFormat.replacingOccurrences(of: "run", with: "in"))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.manualColor(), for: .normal)
        //: coinBtn.setTitle("\(AdministratorThen.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(AdministratorThen.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.afterDisable(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: GatherProcedureReactiveCompatible = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = GatherProcedureReactiveCompatible(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.handle()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.scribeNumber(name: (String(show_broadUniformPocketMessage) + String(app_riseContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bracketOut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(m_railTitle.prefix(5)) + appHostStr.replacingOccurrences(of: "section", with: "o") + String(show_breadSlowId.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(handle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hottentotSBread), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.tabOn(colors: [UIColor(hex: (String(showCivicKey.prefix(7))))!.cgColor, UIColor(hex: (String(appNeedUrl.suffix(7))))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [ConsistMeasurable] = //: return Array<ConsistMeasurable>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.BundleImageNamed(name: "icon_coin_match_line")
        view.image = UIImage.scribeNumber(name: (String(showCanMessage)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension InsertMatchDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func handle() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func hottentotSBread() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: m_colorFormat.map{ourselvesReverseDisc(orbit: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: dream_dateVideoCombinedStr.reversed(), encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: app_draftFutureFormat.map{exitUserSpec(fore: $0)}, encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (user_giftUrl.replacingOccurrences(of: "po", with: "i")): self.currentModel.uid]
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (mDefinitionPath.replacingOccurrences(of: "minimum", with: "o") + "FreeCall"))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: dream_slatId.map{aboveFamily(across: $0)}, encoding: .utf8)!: (user_primaryKey.replacingOccurrences(of: "warm", with: "u") + String(mOuterFatalTitle.suffix(7))), String(bytes: noti_readingText.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        AdviceLandscapeReactiveCompatible.shared.underAccelerate(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        AdviceLandscapeReactiveCompatible.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        AdviceLandscapeReactiveCompatible.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func iterate() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        DrawReactiveCompatible.pan { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! WordOfAdviceThen
            //: coinBtn.setTitle(AdministratorThen.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(AdministratorThen.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func bracketOut() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        ever()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension InsertMatchDelegate: PickUpMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func animalData(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func capAdmin(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: InsertMatchDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(user_giftUrl.replacingOccurrences(of: "po", with: "i"))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = ExtentRecognizerDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = ChatModel.ptolemaicSystem(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - TwelveNoonObjectProtocol

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension InsertMatchDelegate: TwelveNoonObjectProtocol {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func playerData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(show_speakerOffingFormat) + dreamMultipleId.replacingOccurrences(of: "op", with: "l")) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.iconThemeBringBackPlace(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == JawContentConvertible.CallEnd.rawValue {
                //: clickBackButtonAction()
                handle()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == JawContentConvertible.MoneyLack.rawValue {
                //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else { return }
                //: DumpPushManager.share.func__jumpToWebRecharge(sufficient: false)
                DumpPushManager.share.shapeStyle(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension InsertMatchDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func windExposureSubviews() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func confinement() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(appServerSensePath)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(main_showUrl + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func ever() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        eigenvalue()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.quantityHungWindow(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = InMigrationRecognizerDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.springEquinox()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if AdministratorThen.share.appStatus != AppSkinStatus.normal.rawValue {
        if AdministratorThen.share.appStatus != BecauseMultiplierTarget.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! WordOfAdviceThen
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            eigenvalue()
        }
    }

    //: func setPriceBtn() {
    func eigenvalue() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: AdministratorThen.share.loginUserMode.freeCallTimes)
        let attrString = String.buildStyle(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: AdministratorThen.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
