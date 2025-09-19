
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_coordinateName:[UInt8] = [0x92,0x95,0x92,0x8f,0xd3,0x98,0x94,0x9f,0x9e,0x89,0xc1,0xd2,0xdb,0x93,0x9a,0x88,0xdb,0x95,0x94,0x8f,0xdb,0x99,0x9e,0x9e,0x95,0xdb,0x92,0x96,0x8b,0x97,0x9e,0x96,0x9e,0x95,0x8f,0x9e,0x9f]

private func blindSource(lat num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "Say something...     " :*/
fileprivate let appFeatureData:String = "native faceSay so"
fileprivate let show_photographId:String = "stillthi"
fileprivate let show_comprehensiveChipPath:String = "    "

/*: "party_bottom_mic_open" :*/
fileprivate let appCompriseIdent:[Character] = ["p","a","r","t","y","_","b","o","t"]
fileprivate let k_drawStr:[Character] = ["t","o","m","_","m","i","c","_","o","p","e","n"]

/*: "party_bottom_mic_close" :*/
fileprivate let noti_nightFlameInitialValue:String = "ppause"
fileprivate let main_pocketData:String = "pick trim argumentty_bo"
fileprivate let userEasternValue:String = "_mic_cinstall sub honey"

/*: "btn_video_gift_nor" :*/
fileprivate let m_memoryPath:String = "ex guidebtn_vide"
fileprivate let mainSucceedName:String = "given service lose beg lengtho_gift"

/*: "btn_live_sx_nor" :*/
fileprivate let user_eyeYouStr:String = "btn_like giving boy"
fileprivate let k_othersMaterialValue:String = "strike agency_sx_nor"

/*: "btn_live_sx_pre" :*/
fileprivate let userUniversalFormat:String = "btn_liveexist general"
fileprivate let dream_lackTriggerSpeedFormat:String = "thumb female perspective brand_sx_pre"

/*: "#FF2348" :*/
fileprivate let mainIdentityValue:[Character] = ["#","F","F","2","3","4","8"]

/*: "Please contact the host to turn on the mic" :*/
fileprivate let m_begProfileArcData:[UInt8] = [0xe8,0xd4,0xdd,0xd9,0xcb,0xdd,0x98,0xdb,0xd7,0xd6,0xcc,0xd9,0xdb,0xcc,0x98,0xcc,0xd0,0xdd,0x98,0xd0,0xd7,0xcb,0xcc,0x98,0xcc,0xd7,0x98,0xcc,0xcd,0xca,0xd6,0x98,0xd7,0xd6,0x98,0xcc,0xd0,0xdd,0x98,0xd5,0xd1,0xdb]

/*: "Please select an object" :*/
fileprivate let k_injuryOffdTitle:String = "Please sta palace coordinator"
fileprivate let appOppositionFormat:String = "elect output attach"

/*: "toUid" :*/
fileprivate let showFreedomValue:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let app_fullIdent:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let showRoadFormat:String = "mystery proposal engagement publication posegiftN"
fileprivate let show_eonMsg:[Character] = ["u","m"]

/*: "roomId" :*/
fileprivate let dream_communicateUrl:String = "roomIdsupply meet out"

/*: "pkgItemsetId" :*/
fileprivate let show_rearMsg:[Character] = ["p","k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let showEpicNoteThinkPath:String = "totcivic"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PositionView.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol TowardSignalObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func bilge()
}

//: class TalkingVoiceRoomBottomView: UIView {
class PositionView: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: TowardSignalObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        centerpiece()
        //: setupSubViewsConstraint()
        substitute()
        //: EdgeMsgListener.shared.func__addDelegate(self)
        EdgeMsgListener.shared.requireExpected(self)
        //: refreshRedCountStatus()
        proprietress()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_coordinateName.map{blindSource(lat: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    let commentBtnString = (String(appFeatureData.suffix(6)) + show_photographId.replacingOccurrences(of: "still", with: "me") + "ng... " + show_comprehensiveChipPath.capitalized)
    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + commentBtnString.localized, for: .normal)
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
        btn.addTarget(self, action: #selector(roundExpected), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(appCompriseIdent) + String(k_drawStr))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.scribeNumber(name: (noti_nightFlameInitialValue.replacingOccurrences(of: "pause", with: "ar") + String(main_pocketData.suffix(5)) + "ttom" + String(userEasternValue.prefix(6)) + "lose")), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(customSkin), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(m_memoryPath.suffix(8)) + String(mainSucceedName.suffix(6)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.scribeNumber(name: (String(m_memoryPath.suffix(8)) + String(mainSucceedName.suffix(6)) + "_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(financialAid), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(user_eyeYouStr.prefix(4)) + "live" + String(k_othersMaterialValue.suffix(7)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.scribeNumber(name: (String(userUniversalFormat.prefix(8)) + String(dream_lackTriggerSpeedFormat.suffix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(chatMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(mainIdentityValue)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PubliclyViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = PubliclyViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension PositionView {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func undersurface() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = LanceManager.doingResource().trademark(key: LanceManager.doingResource().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func mEnd() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.arcByMedium()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func roundExpected() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.bilge()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func customSkin() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = LanceManager.doingResource().trademark(key: LanceManager.doingResource().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            LanceManager.doingResource().quantifiability(type: 4, position: LanceManager.doingResource().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            iconThemeBringBackPlace(showMsg: String(bytes: m_begProfileArcData.map{$0^184}, encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            LanceManager.doingResource().quantifiability(type: 5, position: LanceManager.doingResource().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func chatMove() {
        //: DumpPushManager.share.func__pushToChatListVC(isHalfView: true)
        DumpPushManager.share.routeView(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func financialAid() {
        //: func__sendGift()
        field()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension PositionView {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func field(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        FlowEditionGiftManager.share.prefaceCompletion(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.bassUid(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func bassUid(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        giftView.stooper(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        springEquinox()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.inside(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.inside(allSelected: true)
        }
        //: giftView.showView()
        giftView.popularItem()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: ApprovalModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.airt(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func airt(giftModel: ApprovalModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            iconThemeBringBackPlace(showMsg: dream_micData)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        LanceManager.doingResource().buttonPositions().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != AdministratorThen.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != AdministratorThen.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            iconThemeBringBackPlace(showMsg: (String(k_injuryOffdTitle.prefix(8)) + String(appOppositionFormat.prefix(6)) + "an object").localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(showFreedomValue))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(app_fullIdent))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(showRoadFormat.suffix(5)) + String(show_eonMsg))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(dream_communicateUrl.prefix(6)))] = LanceManager.doingResource().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(show_rearMsg))] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        ShrinkReactiveCompatible.currency(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.common(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.channelFirst(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func channelFirst(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((showEpicNoteThinkPath.replacingOccurrences(of: "civic", with: "a") + "lMfCoin")) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(showEpicNoteThinkPath.replacingOccurrences(of: "civic", with: "a") + "lMfCoin")] as! NSNumber
            //: AdministratorThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            AdministratorThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
        giftView.stooper(needReload: false, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func common(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - ConfirmMerelyManagerDelegate【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension PositionView: ConfirmMerelyManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func shareCount(count _: Int) {
        //: refreshRedCountStatus()
        proprietress()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func proprietress() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension PositionView {
    /// 添加视图
    //: private func setupSubviews() {
    private func centerpiece() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func substitute() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
