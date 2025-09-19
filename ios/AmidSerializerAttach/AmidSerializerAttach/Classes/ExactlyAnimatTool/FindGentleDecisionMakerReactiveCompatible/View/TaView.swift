
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiLibraryPath:[UInt8] = [0xd1,0xd6,0xd1,0xcc,0x90,0xdb,0xd7,0xdc,0xdd,0xca,0x82,0x91,0x98,0xd0,0xd9,0xcb,0x98,0xd6,0xd7,0xcc,0x98,0xda,0xdd,0xdd,0xd6,0x98,0xd1,0xd5,0xc8,0xd4,0xdd,0xd5,0xdd,0xd6,0xcc,0xdd,0xdc]

private func zzMid(currently num: UInt8) -> UInt8 {
    return num ^ 184
}

/*: "Say something...     " :*/
fileprivate let k_courseValue:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g",".",".","."]
fileprivate let appCountroTitle:String = "     "

/*: "btn_video_gift_nor" :*/
fileprivate let userSpotSlimTitle:String = "final engagement allowbtn_"
fileprivate let m_survivalTitle:String = "tub retired continue late againstft_nor"

/*: "btn_live_gd_nor" :*/
fileprivate let show_boardPath:[Character] = ["b","t","n","_","l","i","v"]
fileprivate let kHowText:[Character] = ["e","_","g","d","_","n","o","r"]

/*: "btn_live_gd_pre" :*/
fileprivate let kAdministrativeUrl:String = "btn_lwarn submit height gray definition"
fileprivate let kRegionMessage:String = "launch warning rank threshold_pre"

/*: "btn_live_sx_nor" :*/
fileprivate let main_attentionName:String = "label equally depthbtn_li"
fileprivate let notiCommitteeTitle:[Character] = ["v","e","_","s","x","_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let main_signatureId:String = "constraint live minimumbtn_"
fileprivate let dreamOpenlyMessage:String = "_sx_prepow function"

/*: "#FF2348" :*/
fileprivate let mExistStr:[Character] = ["#","F","F","2","3","4","8"]

/*: "btn_live_yx_nor" :*/
fileprivate let main_candidateUserData:[Character] = ["b","t","n","_","l","i","v","e","_","y","x"]
fileprivate let dream_holderOrangeStr:[Character] = ["_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let showBadStr:String = "btn_three status"
fileprivate let m_tooTitle:String = "magnitude apartment decent reject select_yx_pr"
fileprivate let app_beforeTurnData:[Character] = ["e"]

/*: "toUid" :*/
fileprivate let noti_begUrl:String = "toUidaway poor amid paper"

/*: "giftId" :*/
fileprivate let mPullTitle:String = "giftIdinvolve curve busy trade miracle"

/*: "giftNum" :*/
fileprivate let userLandmarkName:String = "giftNumthanks quality gift transition"

/*: "pkgItemsetId" :*/
fileprivate let mainBorderValue:[Character] = ["p","k","g","I","t","e","m","s","e","t"]
fileprivate let appPublishKey:[Character] = ["I","d"]

/*: "totalMfCoin" :*/
fileprivate let showAnalyzeName:String = "custom image towertotalMfC"
fileprivate let mAirKey:String = "OIN"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TaView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol RepublishObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func byBroad()
}

//: class TalkingLiveRoomBottomView: UIView {
class TaView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: RepublishObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        listener()
        //: setupSubViewsConstraint()
        pavingConstraint()
        //: EdgeMsgListener.shared.func__addDelegate(self)
        EdgeMsgListener.shared.requireExpected(self)
        //: refreshRedCountStatus()
        waitress()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiLibraryPath.map{zzMid(currently: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(k_courseValue) + appCountroTitle.capitalized).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.toastrackUpwardlyState(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(generalClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(userSpotSlimTitle.suffix(4)) + "video_gi" + String(m_survivalTitle.suffix(6)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.scribeNumber(name: (String(userSpotSlimTitle.suffix(4)) + "video_gi" + String(m_survivalTitle.suffix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(arcPublicationQuery), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(show_boardPath) + String(kHowText))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.scribeNumber(name: (String(kAdministrativeUrl.prefix(5)) + "ive_gd" + String(kRegionMessage.suffix(4)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(haphazardClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(main_attentionName.suffix(6)) + String(notiCommitteeTitle))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.scribeNumber(name: (String(main_signatureId.suffix(4)) + "live" + String(dreamOpenlyMessage.prefix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bringRecording), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(mExistStr)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(main_candidateUserData) + String(dream_holderOrangeStr))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.scribeNumber(name: (String(showBadStr.prefix(4)) + "live" + String(m_tooTitle.suffix(6)) + String(app_beforeTurnData))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pitch), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PubliclyViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = PubliclyViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: PurchaseThen = {
        //: let v = TalkingLiveRoomMoreView()
        let v = PurchaseThen()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: MildReactiveCompatible = {
        //: let v = TalkingLiveRoomGamesView()
        let v = MildReactiveCompatible()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension TaView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func generalClick() {
        //: delegate?.func__commentBtnClick()
        delegate?.byBroad()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func arcPublicationQuery() {
        //: func__sendGift()
        disappearOffGift()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func bringRecording() {
        //: DumpPushManager.share.func__pushToChatListVC(isHalfView: true)
        DumpPushManager.share.routeView(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func haphazardClick() {
        //: moreView.showView()
        moreView.vanguardOpence()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func pitch() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.plainspoken(from: .LiveRoom)
    }
}

// MARK: - ConfirmMerelyManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension TaView: ConfirmMerelyManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func shareCount(count _: Int) {
        //: refreshRedCountStatus()
        waitress()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func waitress() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [EdgeMsgListener.shared.topConvList, EdgeMsgListener.shared.norConvList]
        let convLists = [EdgeMsgListener.shared.topConvList, EdgeMsgListener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension TaView {
    //: func func__sendGift() {
    func disappearOffGift() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        FlowEditionGiftManager.share.prefaceCompletion(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.lipReView()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func lipReView() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        giftView.stooper(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        springEquinox()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.popularItem()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: ApprovalModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.divertNum(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func divertNum(giftModel: ApprovalModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            iconThemeBringBackPlace(showMsg: dream_micData)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(noti_begUrl.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(mPullTitle.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(userLandmarkName.prefix(7)))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(mainBorderValue) + String(appPublishKey))] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        ShrinkReactiveCompatible.buryVideo(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.animal(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.beforeAgent(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.limitDescription(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func limitDescription(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(showAnalyzeName.suffix(8)) + mAirKey.lowercased())) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(showAnalyzeName.suffix(8)) + mAirKey.lowercased())] as! NSNumber
            //: AdministratorThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            AdministratorThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        giftView.stooper(needReload: false, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func animal(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard AdministratorThen.share.loginUserMode.status != 1 else {
            guard AdministratorThen.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    iconThemeBringBackPlace(showMsg: errorStr)
                }
                //: return
                return
            }
            //: DumpPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            DumpPushManager.share.shapeStyle(clickEvent: user_firstConnectMsg, sufficient: false)
            //: giftView.dismissView()
            giftView.forefrontCurrent()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ConsumerPopView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage))
            //: view.show()
            view.bill()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                iconThemeBringBackPlace(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension TaView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func leave(_ liveModel: DetectTransformable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == AdministratorThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == AdministratorThen.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue,
        if AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func listener() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func pavingConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
