
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mMustMsg:[UInt8] = [0x2a,0x2d,0x2a,0x37,0x6b,0x20,0x2c,0x27,0x26,0x31,0x79,0x6a,0x63,0x2b,0x22,0x30,0x63,0x2d,0x2c,0x37,0x63,0x21,0x26,0x26,0x2d,0x63,0x2a,0x2e,0x33,0x2f,0x26,0x2e,0x26,0x2d,0x37,0x26,0x27]

/*: "#292929" :*/
fileprivate let main_untilMsg:String = "#2cooking2cooking2cooking"

/*: "9999999" :*/
fileprivate let userProperlyValue:[Character] = ["9","9","9","9","9","9","9"]

/*: "icon_coin" :*/
fileprivate let app_certainData:String = "icon_cexternal to tempt certain"
fileprivate let app_commandPitchData:[Character] = ["o","i","n"]

/*: "icon_gift_more_arrow" :*/
fileprivate let kPostGainKey:String = "estimated available tone awake toneicon_"
fileprivate let k_causeValue:String = "re_aminimal paper lens gift"

/*: "Hot" :*/
fileprivate let userTicketUrl:String = "Hotanniversary somebody powder conduct advantage"

/*: "VIP" :*/
fileprivate let showAdWarnKey:[Character] = ["V","I","P"]

/*: "Bags" :*/
fileprivate let showPrettyKey:[Character] = ["B","a","g","s"]

/*: "icon_gift_num_arrow" :*/
fileprivate let userToData:String = "extended resulticon_"
fileprivate let userSkipSiblingId:String = "radio cultural join_num"
fileprivate let user_constraintValue:String = "_arrowteam woman root status imitation"

/*: "Send" :*/
fileprivate let dreamFloorLoseData:String = "Sendrich tub additional yellow likelihood"

/*: "nav_back_black_nor" :*/
fileprivate let m_rolePath:String = "nav_bagent bullet day"
fileprivate let notiWorkUrl:String = "arrive"
fileprivate let showForestId:[Character] = ["a","c","k","_","n","o","r"]

/*: "The number of gifts cannot be less than 1" :*/
fileprivate let dream_subData:[UInt8] = [0xe5,0xd9,0xd4,0x91,0xdf,0xc4,0xdc,0xd3,0xd4,0xc3,0x91,0xde,0xd7,0x91,0xd6,0xd8,0xd7,0xc5,0xc2,0x91,0xd2,0xd0,0xdf,0xdf,0xde,0xc5,0x91,0xd3,0xd4,0x91,0xdd,0xd4,0xc2,0xc2,0x91,0xc5,0xd9,0xd0,0xdf,0x91,0x80]

/*: "Please select a gift" :*/
fileprivate let app_lipSmoothIdent:[Character] = ["P","l","e","a","s","e"," ","s","e","l","e","c","t"," ","a"]
fileprivate let showPolicyData:[Character] = [" ","g","i","f","t"]

/*: "Please select an object" :*/
fileprivate let noti_productIdent:String = "Pleareading stage civic mm"
fileprivate let kLensExternalUrl:String = "lect aengagement coal normal strip"

/*: "Select the desired gift to unlock" :*/
fileprivate let userDonName:[UInt8] = [0x36,0x48,0x4f,0x48,0x46,0x57,0x3,0x57,0x4b,0x48,0x3,0x47,0x48,0x56,0x4c,0x55,0x48,0x47,0x3,0x4a,0x4c,0x49,0x57,0x3,0x57,0x52,0x3,0x58,0x51,0x4f,0x52,0x46,0x4e]

fileprivate func youConnect(lack num: UInt8) -> UInt8 {
    let value = Int(num) + 29
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Select object >" :*/
fileprivate let k_matterDueAverageTitle:String = "Selectopportunity announcement format component look"

/*: "It looks like there's nothing" :*/
fileprivate let show_licenseData:[Character] = ["I","t"," ","l","o","o","k","s"," ","l","i","k","e"," ","t"]
fileprivate let showSeatIdent:[Character] = ["h","e","r"]
fileprivate let user_statePath:[Character] = ["e","\'","s"," ","n","o","t","h","i","n","g"]

/*: "FF75A4" :*/
fileprivate let showDeliveryData:[Character] = ["F","F","7","5","A","4"]

/*: "E570FF" :*/
fileprivate let k_decisionKey:String = "E570manualmanual"

/*: "Ask for" :*/
fileprivate let dreamCeaseName:String = "between slat match insertAsk for"

/*: " Select %@ > " :*/
fileprivate let notiBallotTrailValue:String = " Selecrecording think position"
fileprivate let showBeanMessage:[Character] = ["t"," ","%","@"," ",">"," "]

/*: "All Numbers" :*/
fileprivate let appExIdent:String = "All Numbbeat small arm"
fileprivate let show_qualityMsg:String = "ecolumns"

/*: "View detailed description >" :*/
fileprivate let kContainerUrl:[Character] = ["V","i"]
fileprivate let mainSumerestName:String = "sun cover includeew d"
fileprivate let main_distanceData:String = "led dcommend angle"
fileprivate let userAdvocateMessage:String = "present tight noiption >"

/*: "9999" :*/
fileprivate let notiAgainIdent:[Character] = ["9","9","9","9"]

/*: "Custom" :*/
fileprivate let mainBoldName:[Character] = ["C","u","s","t","o","m"]

/*: "mf_coin" :*/
fileprivate let notiMarriedStr:String = "constraint else anonymous library banmf_coi"
fileprivate let showMiracleData:[Character] = ["n"]

/*: "showBagsRed" :*/
fileprivate let mTapWithinStr:String = "mention moon fundamental leftshowB"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PubliclyViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import RxSwift
import RxSwift
//: import UIKit
import UIKit

/// 礼物面板UI样式
//: enum GiftViewStyle: String {
enum AdviceExpressionConvertible: String {
    //: case normal = "0"          // 默认送礼
    case normal = "0" // 默认送礼
    //: case intimatePhoto = "1"   // 私密照片送礼
    case intimatePhoto = "1" // 私密照片送礼
    //: case intimateVideo = "2"   // 视频送礼（目前和私密照片样式一致）
    case intimateVideo = "2" // 视频送礼（目前和私密照片样式一致）
    //: case groupChat = "3"       // 群聊礼物
    case groupChat = "3" // 群聊礼物
    //: case live = "4"            // 直播礼物
    case live = "4" // 直播礼物
    //: case call = "5"            // 音视频通话
    case call = "5" // 音视频通话
    //: case party = "6"           // 语聊房
    case party = "6" // 语聊房
}

/// 礼物面板数据类型
//: enum GiftDataType: Int {
enum InjuryConstantTarget: Int {
    //: case Hot = 0
    case Hot = 0 // 默认礼物
    //: case Vip = 1
    case Vip = 1 // vip礼物
    //: case Bags = 2
    case Bags = 2 // 背包礼物
}

// 发送礼物Block
//: typealias SendFunctionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String) -> Void
typealias SendFunctionBlock = (_ giftModel: ApprovalModelType, _ num: String) -> Void
// 索要礼物Block
//: typealias AskforFunctionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String) -> Void
typealias AskforFunctionBlock = (_ giftModel: ApprovalModelType, _ num: String) -> Void
// 私密照片发送礼物Block
//: typealias OKButtonBlock = (_ giftModel: TalkingRoomGiftModel) -> Void
typealias OKButtonBlock = (_ giftModel: ApprovalModelType) -> Void
// 群聊发送礼物Block
//: typealias ChatRoomSendActionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String, _ model: TalkingChatRoomMemberModel) -> Void
typealias ChatRoomSendActionBlock = (_ giftModel: ApprovalModelType, _ num: String, _ model: LanceTransformable) -> Void
// 隐藏礼物面板Block
//: typealias GiftViewHideBlock = () -> Void
typealias GiftViewHideBlock = () -> Void

// 礼物各模块高度
//: private let topView_H = 44.0
private let app_lessId = 44.0
//: let GiftScrollContentView_H = 252.0
let dreamProgressValue = 252.0
//: private let pageControl_H = 7.0
private let dreamEnableName = 7.0
//: private let bottomView_H = 44.0
private let mainLocalFormatPath = 44.0

//: class TalkingChatGiftView: UIView {
class PubliclyViewDelegate: UIView {
    //: var chatRoomID = ""
    var chatRoomID = ""
    //: var showOtherInputView = false
    var showOtherInputView = false
    //: var contentHeight = topView_H + GiftScrollContentView_H + pageControl_H + bottomView_H + kDeviceSafeBottomHeight
    var contentHeight = app_lessId + dreamProgressValue + dreamEnableName + mainLocalFormatPath + main_showUrl
    //: var keyborHeight = 0
    var keyborHeight = 0
    //: var sendActionBlock: SendFunctionBlock!
    var sendActionBlock: SendFunctionBlock!
    //: var askforActionBlock: AskforFunctionBlock!
    var askforActionBlock: AskforFunctionBlock!
    //: var chatRoomSendActionBlock: ChatRoomSendActionBlock!
    var chatRoomSendActionBlock: ChatRoomSendActionBlock!
    //: var giftHideBlock: GiftViewHideBlock!
    var giftHideBlock: GiftViewHideBlock!
    //: var okActionBlock: OKButtonBlock?
    var okActionBlock: OKButtonBlock?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()
    //: private var style: GiftViewStyle = .normal
    private var style: AdviceExpressionConvertible = .normal
    //: var giftSelectedModel = TalkingGiftSelectedModel()
    var giftSelectedModel = PosterToneTransformable()
    //: var chatRoomgiftSelectedMemberModel: TalkingChatRoomMemberModel?
    var chatRoomgiftSelectedMemberModel: LanceTransformable?
    //: var popView: TalkingPopView?
    var popView: AsideView?
    //: var meneView = DropDownMemberMenuView()
    var meneView = BrotherDataSource()
    //: fileprivate var recentmenuArray = NSMutableArray.init()
    fileprivate var recentmenuArray = NSMutableArray()
    //: let maxRecentmenu = 2
    let maxRecentmenu = 2
    //: private var titlesArr = [GiftDataType]()
    private var titlesArr = [InjuryConstantTarget]()
    // 当前选中数据类型
    //: private var currType = GiftDataType.Hot
    private var currType = InjuryConstantTarget.Hot
    //: private var isShowRight = false
    private var isShowRight = false
    /// 初始化礼物背包
    /// - Parameters:
    ///   - frame: 布局
    ///   - style: 礼物面板UI样式
    ///   - titlesArr: 礼物面板数据类型
    //: init(frame: CGRect = .zero, style: GiftViewStyle = .normal, titlesArr: [GiftDataType] = [.Hot, .Vip, .Bags]) {
    init(frame: CGRect = .zero, style: AdviceExpressionConvertible = .normal, titlesArr: [InjuryConstantTarget] = [.Hot, .Vip, .Bags]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.style = style
        self.style = style
        //: self.titlesArr = titlesArr
        self.titlesArr = titlesArr
        //: self.currType = titlesArr.first ?? .Hot
        self.currType = titlesArr.first ?? .Hot
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
        //: if self.style == .party {
        if self.style == .party {
            //: contentHeight += TalkingVoiceRoomIconGiftView_H
            contentHeight += user_collectionId
        }
        //: setupSubviews()
        velvetTexturedCur()
        //: bindInteraction()
        alongOld()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            //: hotGiftCollectionView.layer.transform = transform
            hotGiftCollectionView.layer.transform = transform
            //: self.isShowRight = true
            self.isShowRight = true
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mMustMsg.map{$0^67}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentHeight)
        let frame = CGRect(x: 0, y: appMineMessage, width: noti_senseContent, height: contentHeight)
        //: let content = UIView(frame: frame)
        let content = UIView(frame: frame)
        //: content.backgroundColor = .init(hex: "#292929")
        content.backgroundColor = .init(hex: (main_untilMsg.replacingOccurrences(of: "cooking", with: "9")))
        //: content.Corner(width: ScreenWidth, height: contentHeight, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        content.dimensionSixth(width: noti_senseContent, height: contentHeight, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        //: self.addSubview(content)
        self.addSubview(content)
        //: return content
        return content
        //: }()
    }()

    //: lazy var partyIconView: TalkingVoiceRoomIconGiftView = {
    lazy var partyIconView: RestoreReactiveCompatible = {
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: TalkingVoiceRoomIconGiftView_H)
        let frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: user_collectionId)
        //: let view = TalkingVoiceRoomIconGiftView(frame: frame)
        let view = RestoreReactiveCompatible(frame: frame)
        //: view.isHidden = true
        view.isHidden = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topView: UIView = {
    private lazy var topView: UIView = {
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: topView_H)
        let frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: app_lessId)
        //: let view = UIView(frame: frame)
        let view = UIView(frame: frame)
        //: view.backgroundColor = .init(hex: "#292929")
        view.backgroundColor = .init(hex: (main_untilMsg.replacingOccurrences(of: "cooking", with: "9")))
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var moneyBtn: TalkingButton = {
    private lazy var moneyBtn: WordOfAdviceThen = {
        //: let btn = TalkingButton()
        let btn = WordOfAdviceThen()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Medium, fontSize: 14)
        //: btn.setTitle("9999999", for: .normal)
        btn.setTitle((String(userProperlyValue)), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_coin"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(app_certainData.prefix(6)) + String(app_commandPitchData))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rechargeBtn: UIButton = {
    private lazy var rechargeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(rechargeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exceptSmall), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var indicatorImage: UIImageView = {
    private lazy var indicatorImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_gift_more_arrow")
        img.image = UIImage.scribeNumber(name: (String(kPostGainKey.suffix(5)) + "gift_mo" + String(k_causeValue.prefix(4)) + "rrow"))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var pageControl: UIPageControl = {
    private lazy var pageControl: UIPageControl = {
        //: let page = UIPageControl.init()
        let page = UIPageControl()
        //: page.hidesForSinglePage = true
        page.hidesForSinglePage = true
        //: page.defersCurrentPageDisplay = true
        page.defersCurrentPageDisplay = true
        //: page.currentPageIndicatorTintColor = UIColor.RGBA(180, 180, 180, 1)
        page.currentPageIndicatorTintColor = UIColor.fruitThumb(180, 180, 180, 1)
        //: page.pageIndicatorTintColor = UIColor.RGBA(60, 60, 60, 1)
        page.pageIndicatorTintColor = UIColor.fruitThumb(60, 60, 60, 1)
        //: page.isEnabled = false
        page.isEnabled = false
        //: return page
        return page
        //: }()
    }()

    //: private lazy var scrollContentView: UIScrollView = {
    private lazy var scrollContentView: UIScrollView = {
        //: let scroll = UIScrollView.init()
        let scroll = UIScrollView()
        //: scroll.backgroundColor = .clear
        scroll.backgroundColor = .clear
        //: return scroll
        return scroll
        //: }()
    }()

    //: private lazy var hotGiftCollectionView: UICollectionView = {
    private lazy var hotGiftCollectionView: UICollectionView = {
        //: let layout = TalkingChatGiftLayout.init()
        let layout = BubbleFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let hot = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let hot = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: hot.delegate = self
        hot.delegate = self
        //: hot.dataSource = self
        hot.dataSource = self
        //: hot.bounces = false
        hot.bounces = false
        //: hot.isPagingEnabled = true
        hot.isPagingEnabled = true
        //: hot.showsHorizontalScrollIndicator = false
        hot.showsHorizontalScrollIndicator = false
        //: hot.backgroundColor = .clear
        hot.backgroundColor = .clear
        //: hot.isHidden = false
        hot.isHidden = false
        //: hot.register(TalkingPackageGiftCell.self, forCellWithReuseIdentifier: TalkingPackageGiftCell.className())
        hot.register(HeapReusableView.self, forCellWithReuseIdentifier: HeapReusableView.className())
        //: return hot
        return hot
        //: }()
    }()

    //: private lazy var hotGiftLayout: TalkingChatGiftLayout = {
    private lazy var hotGiftLayout: BubbleFlowLayout = //: return hotGiftCollectionView.collectionViewLayout as! BubbleFlowLayout
        hotGiftCollectionView.collectionViewLayout as! BubbleFlowLayout
    //: }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleScrollView: ScrollSegmentView = {
    private lazy var titleScrollView: ViewThen = {
        //: var titles = [String]()
        var titles = [String]()
        //: titlesArr.forEach { type in
        titlesArr.forEach { type in
            //: switch type {
            switch type {
            //: case .Hot:
            case .Hot:
                //: titles.append("Hot".localized)
                titles.append((String(userTicketUrl.prefix(3))).localized)
            //: case .Vip:
            case .Vip:
                //: titles.append("VIP".localized)
                titles.append((String(showAdWarnKey)).localized)
            //: case .Bags:
            case .Bags:
                //: titles.append("Bags".localized)
                titles.append((String(showPrettyKey)).localized)
            }
        }
        //: var style = SegmentStyle()
        var style = SubsectionPoorSegmentStyle()
        //: style.scrollTitle = true
        style.scrollTitle = true
        //: style.showLine = true
        style.showLine = true
        //: style.scrollLineColor = .white
        style.scrollLineColor = .white

        //: let scrollview = ScrollSegmentView(frame: CGRect(x: 0, y: 0, width: titlesArr.count*50, height: Int(topView_H)), segmentStyle: style, titles: titles)
        let scrollview = ViewThen(frame: CGRect(x: 0, y: 0, width: titlesArr.count * 50, height: Int(app_lessId)), segmentStyle: style, titles: titles)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: scrollview.frame.origin.x = CreditsThen.getScreenWidth()-scrollview.frame.width
            scrollview.frame.origin.x = CreditsThen.drawSearchion() - scrollview.frame.width
        }
        // 点击标题，联动礼物面板
        //: scrollview.titleBtnOnClick = { [weak self] _, index in
        scrollview.titleBtnOnClick = { [weak self] _, index in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard index != self.currType.rawValue else { return }
            guard index != self.currType.rawValue else { return }
            //: let indexPath = IndexPath(item: 0, section: index)
            let indexPath = IndexPath(item: 0, section: index)
            //: self.hotGiftCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: .centeredVertically)
            self.hotGiftCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: .centeredVertically)
        }
        // 处理红点
        //: scrollview.redBagsLab.isHidden = !TalkingChatGiftManager.share.showBagsRed
        scrollview.redBagsLab.isHidden = !FlowEditionGiftManager.share.showBagsRed
        //: return scrollview
        return scrollview
        //: }()
    }()

    //: private lazy var sendAreaView: UIView = {
    private lazy var sendAreaView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.borderColor  = UIColor.appThemeColor().cgColor
        view.layer.borderColor = UIColor.fogColor().cgColor
        //: view.layer.borderWidth  = 1
        view.layer.borderWidth = 1
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.clipsToBounds      = true
        view.clipsToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftNumButton: TalkingButton = {
    private lazy var giftNumButton: WordOfAdviceThen = {
        //: let btn = TalkingButton.init()
        let btn = WordOfAdviceThen()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.imageView?.contentMode = .scaleAspectFit
        btn.imageView?.contentMode = .scaleAspectFit
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_gift_num_arrow"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(userToData.suffix(5)) + "gift" + String(userSkipSiblingId.suffix(4)) + String(user_constraintValue.prefix(6)))), for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.addTarget(self, action: #selector(giftNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doweryClick), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sendButton: UIButton = {
    private lazy var sendButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Semibold, fontSize: 15)
        //: btn.backgroundColor = UIColor.appThemeColor()
        btn.backgroundColor = UIColor.fogColor()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(dreamFloorLoseData.prefix(4))).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(onTouchSendGiftBtn), for: .touchUpInside)
        btn.addTarget(self, action: #selector(a), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftInputNumInputView: UIView = {
    private lazy var giftInputNumInputView: UIView = {
        //: let view = UIView.init(frame: CGRect(x: 0, y: ScreenHeight-CGFloat(keyborHeight)-44, width: ScreenWidth, height: 44))
        let view = UIView(frame: CGRect(x: 0, y: appMineMessage - CGFloat(keyborHeight) - 44, width: noti_senseContent, height: 44))
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: let backButton = UIButton.init()
        let backButton = UIButton()
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.scribeNumber(name: (String(m_rolePath.prefix(5)) + "ack_b" + notiWorkUrl.replacingOccurrences(of: "arrive", with: "l") + String(showForestId))).withRenderingMode(.alwaysTemplate)
        //: backButton.setImage(img, for: .normal)
        backButton.setImage(img, for: .normal)
        //: backButton.tintColor = .white
        backButton.tintColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.top.equalTo(view)
            make.leading.top.equalTo(view)
            //: make.width.height.equalTo(44)
            make.width.height.equalTo(44)
        }
        //: backButton.rx.tap.subscribe { (event) in
        backButton.rx.tap.subscribe { _ in
            //: self.popView?.dismissView()
            self.popView?.theme()
            //: self.popView = nil
            self.popView = nil
            //: }.disposed(by: disposeBag)
        }.disposed(by: disposeBag)

        //: let sendButton = UIButton.init()
        let sendButton = UIButton()
        //: sendButton.setBackgroundColor(color: .appThemeColor(), forState: .normal)
        sendButton.toastrackUpwardlyState(color: .fogColor(), forState: .normal)
        //: sendButton.setTitleColor(UIColor.white, for: .normal)
        sendButton.setTitleColor(UIColor.white, for: .normal)
        //: sendButton.setTitle("Send".localized, for: .normal)
        sendButton.setTitle((String(dreamFloorLoseData.prefix(4))).localized, for: .normal)
        //: view.addSubview(sendButton)
        view.addSubview(sendButton)
        //: sendButton.snp.makeConstraints { make in
        sendButton.snp.makeConstraints { make in
            //: make.trailing.top.equalTo(view)
            make.trailing.top.equalTo(view)
            //: make.width.equalTo(106)
            make.width.equalTo(106)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
        //: sendButton.rx.tap.subscribe { [weak self](event) in
        sendButton.rx.tap.subscribe { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let str: String = self.giftInputNumTF.text ?? "0"
            let str: String = self.giftInputNumTF.text ?? "0"
            //: guard Int(str) ?? 0 >= 1 else {
            guard Int(str) ?? 0 >= 1 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "The number of gifts cannot be less than 1".localized)
                self.iconThemeBringBackPlace(showMsg: String(bytes: dream_subData.map{$0^177}, encoding: .utf8)!.localized)
                //: return
                return
            }
            //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                self.iconThemeBringBackPlace(showMsg: (String(app_lipSmoothIdent) + String(showPolicyData)).localized)
                //: return
                return
            }

            //: self.giftSelectedModel.hotGiftNum = Int(str) ?? 1
            self.giftSelectedModel.hotGiftNum = Int(str) ?? 1
            //: self.giftNumButton.setTitle(str, for: .normal)
            self.giftNumButton.setTitle(str, for: .normal)
            //: self.afterChangeNum()
            self.magazine()

            //: if self.chatRoomID.count > 0 {
            if self.chatRoomID.count > 0 {
                //: guard self.chatRoomgiftSelectedMemberModel != nil else {
                guard self.chatRoomgiftSelectedMemberModel != nil else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
                    self.iconThemeBringBackPlace(showMsg: (String(noti_productIdent.prefix(4)) + "se se" + String(kLensExternalUrl.prefix(6)) + "n object").localized)
                    //: return
                    return
                }
                //: if self.chatRoomSendActionBlock != nil {
                if self.chatRoomSendActionBlock != nil {
                    //: let index = self.giftSelectedModel.lastHotIndexPath.row
                    let index = self.giftSelectedModel.lastHotIndexPath.row
                    //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                    guard let dataType = InjuryConstantTarget(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                    //: let dataArr = self.getGiftData(dataType: dataType)
                    let dataArr = self.searched(dataType: dataType)
                    //: if index < dataArr.count {
                    if index < dataArr.count {
                        //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                        let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
                        //: self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                        self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                    }
                }
                //: } else {
            } else {
                //: let index = self.giftSelectedModel.lastHotIndexPath.row
                let index = self.giftSelectedModel.lastHotIndexPath.row
                //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                guard let dataType = InjuryConstantTarget(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                //: let dataArr = self.getGiftData(dataType: dataType)
                let dataArr = self.searched(dataType: dataType)
                //: if index < dataArr.count {
                if index < dataArr.count {
                    //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                    let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
                    //: if self.sendActionBlock != nil {
                    if self.sendActionBlock != nil {
                        //: self.sendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                        self.sendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                    }
                }
            }

            //: self.popView?.dismissView()
            self.popView?.theme()
            //: self.popView = nil
            self.popView = nil

            //: }.disposed(by: disposeBag)
        }.disposed(by: disposeBag)

        //: view.addSubview(giftInputNameLabel)
        view.addSubview(giftInputNameLabel)
        //: giftInputNameLabel .snp.makeConstraints { make in
        giftInputNameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(44)
            make.leading.equalTo(44)
            //: make.top.equalTo(view)
            make.top.equalTo(view)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
        //: view.addSubview(giftInputNumTF)
        view.addSubview(giftInputNumTF)
        //: giftInputNumTF .snp.makeConstraints { make in
        giftInputNumTF.snp.makeConstraints { make in
            //: make.centerX.equalTo(view.snp.centerX)
            make.centerX.equalTo(view.snp.centerX)
            //: make.top.equalTo(view)
            make.top.equalTo(view)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
            //: make.width.equalTo(100)
            make.width.equalTo(100)
        }

        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftInputNameLabel: UILabel = {
    private lazy var giftInputNameLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appThemeColor()
        lb.textColor = UIColor.fogColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var giftInputNumTF: UITextField = {
    private lazy var giftInputNumTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.keyboardType = .asciiCapableNumberPad
        tf.keyboardType = .asciiCapableNumberPad
        //: tf.textColor=UIColor.white
        tf.textColor = UIColor.white
        //: tf.textAlignment = .center
        tf.textAlignment = .center
        //: tf.addTarget(self, action: #selector(keyboardInputShouldDelete(_:)), for: .editingChanged)
        tf.addTarget(self, action: #selector(miniAnnouncement(_:)), for: .editingChanged)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(stat(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(extraHair(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        //: return tf
        return tf
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Select the desired gift to unlock".localized
        lab.text = String(bytes: userDonName.map{youConnect(lack: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.soil(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .right
        lab.textAlignment = .right
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var okBtn: UIButton = {
    private lazy var okBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.appThemeColor()
        btn.backgroundColor = UIColor.fogColor()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.imitationClotheStatement(fontSize: 15)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(okButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(same), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var seleteObjectBtn: UIButton = {
    private lazy var seleteObjectBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.clear
        btn.backgroundColor = UIColor.clear
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.imitationClotheStatement(fontSize: 14)
        //: btn.setTitle("Select object >".localized, for: .normal)
        btn.setTitle((String(k_matterDueAverageTitle.prefix(6)) + " object >").localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.fogColor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        //: btn.addTarget(self, action: #selector(seleteObjectBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(refreshClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var blindBoxExplainBtn: UIButton = {
    private lazy var blindBoxExplainBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.black
        btn.backgroundColor = UIColor.black
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.imitationClotheStatement(fontSize: 14)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.contentHorizontalAlignment = .right
        btn.contentHorizontalAlignment = .right
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.titleLabel?.numberOfLines = 0
        btn.titleLabel?.numberOfLines = 0
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.fogColor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        //: btn.addTarget(self, action: #selector(blindBoxExplainBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mini), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftEmptyView: UILabel = {
    private lazy var giftEmptyView: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lab.font = UIFont.afterDisable(type: .Regular, fontSize: 16)
        //: lab.text = "It looks like there's nothing".localized
        lab.text = (String(show_licenseData) + String(showSeatIdent) + String(user_statePath)).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var askforBtn: UIButton = {
    private lazy var askforBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FF75A4")!.cgColor, UIColor.init(hex: "E570FF")!.cgColor], size: CGSize(width: 68, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.tabOn(colors: [UIColor(hex: (String(showDeliveryData)))!.cgColor, UIColor(hex: (k_decisionKey.replacingOccurrences(of: "manual", with: "F")))!.cgColor], size: CGSize(width: 68, height: 30)), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Semibold, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.setTitle("Ask for".localized, for: .normal)
        btn.setTitle((String(dreamCeaseName.suffix(7))).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(askforBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(closedAskfor), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatGiftView {
extension PubliclyViewDelegate {
    /// 隐藏视图
    //: @objc func dismissView() {
    @objc func forefrontCurrent() {
        //: if giftHideBlock != nil {
        if giftHideBlock != nil {
            //: giftHideBlock()
            giftHideBlock()
        }
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.contentView.frame = CGRect(x: 0, y: appMineMessage, width: noti_senseContent, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }

    /// 展示视图
    //: func showView() {
    func popularItem() {
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.contentView.frame = CGRect(x: 0, y: appMineMessage - self.contentHeight, width: noti_senseContent, height: self.contentHeight)
            //: }, completion: nil)
        }, completion: nil)
    }

    // ok按钮点击事件
    //: @objc private func okButtonClick() {
    @objc private func same() {
        //: let index = self.giftSelectedModel.lastHotIndexPath.row
        let index = self.giftSelectedModel.lastHotIndexPath.row
        //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
        guard let dataType = InjuryConstantTarget(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
        //: let dataArr = self.getGiftData(dataType: dataType)
        let dataArr = self.searched(dataType: dataType)
        //: guard index < dataArr.count else { return }
        guard index < dataArr.count else { return }

        //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
        let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
        //: if self.okActionBlock != nil {
        if self.okActionBlock != nil {
            //: self.okActionBlock!(giftModel)
            self.okActionBlock!(giftModel)
        }
        //: dismissView()
        forefrontCurrent()
    }

    //: @objc func seleteObjectBtnClick() {
    @objc func refreshClick() {
        //: meneView = DropDownMemberMenuView.init(frame: .zero, anchorView: seleteObjectBtn, roomID: self.chatRoomID)
        meneView = BrotherDataSource(frame: .zero, anchorView: seleteObjectBtn, roomID: self.chatRoomID)
        //: meneView.menuDelegate = self
        meneView.menuDelegate = self
        //: if self.recentmenuArray.count > 0 {
        if self.recentmenuArray.count > 0 {
            //: meneView.recentmenuArray = self.recentmenuArray
            meneView.recentmenuArray = self.recentmenuArray
        }
    }

    //: @objc func blindBoxExplainBtnClick() {
    @objc func mini() {
        //: dismissView()
        forefrontCurrent()
        //: DumpPushManager.share.func__pushToWebVC(webViewType: .luckyBlindBox)
        DumpPushManager.share.anvil(webViewType: .luckyBlindBox)
    }

    /// 索要礼物
    //: @objc func askforBtnClick() {
    @objc func closedAskfor() {
        //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
        guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
            self.iconThemeBringBackPlace(showMsg: (String(app_lipSmoothIdent) + String(showPolicyData)).localized)
            //: return
            return
        }
        //: self.giftSelectedModel.hotGiftNum = 1
        self.giftSelectedModel.hotGiftNum = 1
        //: self.afterChangeNum()
        self.magazine()
        //: giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        //: let index = self.giftSelectedModel.lastHotIndexPath.row
        let index = self.giftSelectedModel.lastHotIndexPath.row
        //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
        guard let dataType = InjuryConstantTarget(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
        //: let dataArr = self.getGiftData(dataType: dataType)
        let dataArr = self.searched(dataType: dataType)
        //: if index < dataArr.count {
        if index < dataArr.count {
            //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
            let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
            //: if self.askforActionBlock != nil {
            if self.askforActionBlock != nil {
                //: self.askforActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                self.askforActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
            }
        }
    }
}

// MARK: - 礼物背包

//: extension TalkingChatGiftView {
extension PubliclyViewDelegate {
    /// 移除礼物背包
    /// - Parameters:
    ///   - pkgItemsetId: 背包Id
    ///   - num: 减少数量
    //: func bags_removeGiftPackage(pkgItemsetId: String, num: Int) {
    func beforeAgent(pkgItemsetId: String, num: Int) {
        //: guard currType == .Bags else { return }
        guard currType == .Bags else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: var bagsDataArr = self.getGiftData(dataType: self.currType) as! [TalkingRoomGiftModel]
            var bagsDataArr = self.searched(dataType: self.currType) as! [ApprovalModelType]
            // 找到当前背包礼物索引，更新数量
            //: if let index = bagsDataArr.firstIndex(where: {$0.pkgItemsetId == pkgItemsetId}) {
            if let index = bagsDataArr.firstIndex(where: { $0.pkgItemsetId == pkgItemsetId }) {
                //: bagsDataArr[index].num -= num
                bagsDataArr[index].num -= num
                // 移除空数据，取消选中状态
                //: if bagsDataArr[index].num <= 0 {
                if bagsDataArr[index].num <= 0 {
                    //: bagsDataArr.remove(at: index)
                    bagsDataArr.remove(at: index)
                    //: self.resetGiftSelectedModel()
                    self.photoPrepare()
                }
            }

            //: TalkingChatGiftManager.share.saveGiftDataSource(dataType: self.currType, dataArr: bagsDataArr)
            FlowEditionGiftManager.share.beginning(dataType: self.currType, dataArr: bagsDataArr)
            //: self.hotGiftLayout.bagsDataArr = bagsDataArr
            self.hotGiftLayout.bagsDataArr = bagsDataArr
            //: self.hotGiftCollectionView.reloadData()
            self.hotGiftCollectionView.reloadData()
            // 刷新UI
            //: self.updatePageControlAndRefreshUI(force: true)
            self.towardSort(force: true)
        }
    }
}

// MARK: - DetectViewDelegate

//: extension TalkingChatGiftView: DropDownMemberMenuViewDelegate {
extension PubliclyViewDelegate: DetectViewDelegate {
    //: func didClickSelectedRow(model: TalkingChatRoomMemberModel) {
    func resumeAnswer(model: LanceTransformable) {
        //: self.chatRoomgiftSelectedMemberModel = model
        self.chatRoomgiftSelectedMemberModel = model
        //: seleteObjectBtn.setTitle(" Select %@ > ".localizedArguments(model.nickname), for: .normal)
        seleteObjectBtn.setTitle((String(notiBallotTrailValue.prefix(6)) + String(showBeanMessage)).innerArguments(model.nickname), for: .normal)
    }

    /// 存储聊天室最近送礼人
    //: func saveRecentMembers() {
    func thinImage() {
        //: guard self.chatRoomgiftSelectedMemberModel != nil  else { return }
        guard self.chatRoomgiftSelectedMemberModel != nil else { return }
        //: let model = self.chatRoomgiftSelectedMemberModel!
        let model = self.chatRoomgiftSelectedMemberModel!
        //: if model.nickname == "All Numbers".localized {
        if model.nickname == (String(appExIdent.prefix(8)) + show_qualityMsg.replacingOccurrences(of: "column", with: "r")).localized {
            //: return
            return
        }
        //: var ishave = false
        var ishave = false
        //: for tmodel in recentmenuArray {
        for tmodel in recentmenuArray {
            //: let temp = tmodel as! TalkingChatRoomMemberModel
            let temp = tmodel as! LanceTransformable
            //: if temp.uid == model.uid {
            if temp.uid == model.uid {
                //: ishave = true
                ishave = true
            }
        }
        //: if !ishave {
        if !ishave {
            //: if recentmenuArray.count == maxRecentmenu {
            if recentmenuArray.count == maxRecentmenu {
                //: recentmenuArray.removeFirstObject()
                recentmenuArray.removeFirstObject()
                //: recentmenuArray.add(model)
                recentmenuArray.add(model)
                //: } else {
            } else {
                //: recentmenuArray.add(model)
                recentmenuArray.add(model)
            }
        }
    }

    /// 设置盲盒礼物提醒UI
    //: func setsetBlindBoxExplainData(title: String) {
    func thumb(title: String) {
        //: let str = "View detailed description >".localized
        let str = (String(kContainerUrl) + String(mainSumerestName.suffix(4)) + "etai" + String(main_distanceData.prefix(5)) + "escr" + String(userAdvocateMessage.suffix(8))).localized
        //: let str2 = title + "\n" + str
        let str2 = title + "\n" + str
        //: blindBoxExplainBtn.isHidden = false
        blindBoxExplainBtn.isHidden = false
        //: let attributedString = NSMutableAttributedString(string: str2)
        let attributedString = NSMutableAttributedString(string: str2)
        //: let range: Range = str2.range(of: str)!
        let range: Range = str2.range(of: str)!
        //: let location = str2.distance(from: str2.startIndex, to: range.lowerBound )
        let location = str2.distance(from: str2.startIndex, to: range.lowerBound)
        //: attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location, length: str.count-2))
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location, length: str.count - 2))
        //: blindBoxExplainBtn.setAttributedTitle(attributedString, for: .normal)
        blindBoxExplainBtn.setAttributedTitle(attributedString, for: .normal)
        //: blindBoxExplainBtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
        blindBoxExplainBtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingChatGiftView: UICollectionViewDelegate, UICollectionViewDataSource {
extension PubliclyViewDelegate: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func getGiftData(dataType: GiftDataType) -> [Any] {
    func searched(dataType: InjuryConstantTarget) -> [Any] {
        //: return TalkingChatGiftManager.share.getHotGiftDataSource(dataType: dataType)
        return FlowEditionGiftManager.share.curResistance(dataType: dataType)
    }

    //: func giftSendItems() -> Array<Any> {
    func currencyPending() -> [Any] {
        //: return TalkingChatGiftManager.share.getSendingItems()
        return FlowEditionGiftManager.share.draftItems()
    }

    /// 刷新礼物面板
    /// - Parameters:
    ///   - needReload: 是否需要刷新
    ///   - mf_coin: 金币
    //: func updateGiftInfo(needReload: Bool, mf_coin: String) {
    func stooper(needReload: Bool, mf_coin: String) {
        //: let coin = Double(mf_coin) ?? 0.0
        let coin = Double(mf_coin) ?? 0.0
        //: moneyBtn.setTitle(String.init(format: "%.2f", coin), for: .normal)
        moneyBtn.setTitle(String(format: "%.2f", coin), for: .normal)

        //: guard needReload == true else { return }
        guard needReload == true else { return }

        //: let index = giftSelectedModel.lastHotIndexPath.row
        let index = giftSelectedModel.lastHotIndexPath.row
        //: let dataArr = getGiftData(dataType: currType)
        let dataArr = searched(dataType: currType)

        //: if dataArr.count > 0, index >= 0, index < dataArr.count {
        if dataArr.count > 0, index >= 0, index < dataArr.count {
            //: let hotModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
            let hotModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
            //: giftSelectedModel.lastPackageIndexPath = giftSelectedModel.lastPackageIndexPath
            giftSelectedModel.lastPackageIndexPath = giftSelectedModel.lastPackageIndexPath
            //: giftSelectedModel.packageGiftName = giftSelectedModel.packageGiftName
            giftSelectedModel.packageGiftName = giftSelectedModel.packageGiftName
            //: giftSelectedModel.packageGiftNum = giftSelectedModel.packageGiftNum
            giftSelectedModel.packageGiftNum = giftSelectedModel.packageGiftNum
            //: giftSelectedModel.hotGiftName = hotModel.name
            giftSelectedModel.hotGiftName = hotModel.name
            //: giftSelectedModel.lastShowType = hotModel.showType
            giftSelectedModel.lastShowType = hotModel.showType
            //: giftSelectedModel.lastDescription = hotModel.description
            giftSelectedModel.lastDescription = hotModel.description
            //: giftSelectedModel.isNoChangeGiftNumber = (hotModel.showType == ChatGiftType.myStery.rawValue)
            giftSelectedModel.isNoChangeGiftNumber = (hotModel.showType == GazetteMultiplierTarget.myStery.rawValue)
        }

        //: giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)

        // 刷新layout
        //: hotGiftLayout.sectionArr = titlesArr
        hotGiftLayout.sectionArr = titlesArr
        //: hotGiftLayout.hotDataArr = getGiftData(dataType: .Hot)
        hotGiftLayout.hotDataArr = searched(dataType: .Hot)
        //: hotGiftLayout.vipDataArr = getGiftData(dataType: .Vip)
        hotGiftLayout.vipDataArr = searched(dataType: .Vip)
        //: hotGiftLayout.bagsDataArr = getGiftData(dataType: .Bags)
        hotGiftLayout.bagsDataArr = searched(dataType: .Bags)
        //: hotGiftCollectionView.reloadData()
        hotGiftCollectionView.reloadData()

        // 刷新UI
        //: updatePageControlAndRefreshUI(force: true)
        towardSort(force: true)
    }

    /// 输入监听
    //: @objc fileprivate func keyboardInputShouldDelete(_ textField: UITextField) {
    @objc fileprivate func miniAnnouncement(_ textField: UITextField) {
        //: let str: String = textField.text ?? ""
        let str: String = textField.text ?? ""
        //: if str.count == 2 && str.hasPrefix("0") {
        if str.count == 2 && str.hasPrefix("0") {
            //: self.giftInputNumTF.text = String(str.suffix(1))
            self.giftInputNumTF.text = String(str.suffix(1))
            //: } else if str.count > 4 {
        } else if str.count > 4 {
            //: self.giftInputNumTF.text = "9999"
            self.giftInputNumTF.text = (String(notiAgainIdent))
            //: } else {
        } else {
            //: self.giftInputNumTF.text = str
            self.giftInputNumTF.text = str
        }
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func extraHair(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)

        //: let height = kbRect.size.height
        let height = kbRect.size.height

        //: keyborHeight = Int(height)
        keyborHeight = Int(height)
        //: giftInputNumInputView.frame = CGRect(x: 0, y: ScreenHeight-CGFloat(keyborHeight)-44, width: ScreenWidth, height: 44)
        giftInputNumInputView.frame = CGRect(x: 0, y: appMineMessage - CGFloat(keyborHeight) - 44, width: noti_senseContent, height: 44)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func stat(notification _: NSNotification) {
        //: var str: String = self.giftInputNumTF.text ?? ""
        var str: String = self.giftInputNumTF.text ?? ""
        //: if Int(str) ?? 0 < 1 {
        if Int(str) ?? 0 < 1 { // 最少为1
            //: str = "1"
            str = "1"
        }

        //: giftSelectedModel.hotGiftNum = Int(str) ?? 0
        giftSelectedModel.hotGiftNum = Int(str) ?? 0
        //: giftNumButton.setTitle(str, for: .normal)
        giftNumButton.setTitle(str, for: .normal)
        //: afterChangeNum()
        magazine()
    }

    //: @objc func onTouchSendGiftBtn() {
    @objc func a() {
        //: if self.chatRoomID.count > 0 {
        if self.chatRoomID.count > 0 {
            //: guard self.chatRoomgiftSelectedMemberModel != nil else {
            guard self.chatRoomgiftSelectedMemberModel != nil else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
                self.iconThemeBringBackPlace(showMsg: (String(noti_productIdent.prefix(4)) + "se se" + String(kLensExternalUrl.prefix(6)) + "n object").localized)
                //: return
                return
            }
            //: if self.chatRoomSendActionBlock != nil {
            if self.chatRoomSendActionBlock != nil {
                //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                    self.iconThemeBringBackPlace(showMsg: (String(app_lipSmoothIdent) + String(showPolicyData)).localized)
                    //: return
                    return
                }

                //: let index = self.giftSelectedModel.lastHotIndexPath.row
                let index = self.giftSelectedModel.lastHotIndexPath.row
                //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
                guard let dataType = InjuryConstantTarget(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
                //: let dataArr = self.getGiftData(dataType: dataType)
                let dataArr = self.searched(dataType: dataType)
                //: if index < dataArr.count {
                if index < dataArr.count {
                    //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                    let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
                    //: self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                    self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                }
            }
            //: } else {
        } else {
            //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                self.iconThemeBringBackPlace(showMsg: (String(app_lipSmoothIdent) + String(showPolicyData)).localized)
                //: return
                return
            }

            //: let index = giftSelectedModel.lastHotIndexPath.row
            let index = giftSelectedModel.lastHotIndexPath.row
            //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
            guard let dataType = InjuryConstantTarget(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
            //: let dataArr = self.getGiftData(dataType: dataType)
            let dataArr = self.searched(dataType: dataType)
            //: if index < dataArr.count {
            if index < dataArr.count {
                //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                let giftModel: ApprovalModelType = dataArr[index] as! ApprovalModelType
                //: if sendActionBlock != nil {
                if sendActionBlock != nil {
                    //: sendActionBlock(giftModel, String(giftSelectedModel.hotGiftNum))
                    sendActionBlock(giftModel, String(giftSelectedModel.hotGiftNum))
                }
            }
        }
    }

    //: @objc func giftNumBtnClick() {
    @objc func doweryClick() {
        //: if giftSelectedModel.isNoChangeGiftNumber == true {
        if giftSelectedModel.isNoChangeGiftNumber == true {
            //: return
            return
        }
        //: tapGiftNumberField()
        maxField()
    }

    //: @objc func rechargeBtnClick() {
    @objc func exceptSmall() {
        //: let payWinType = AdministratorThen.share.appUserConfigMode.payWinType
        let payWinType = AdministratorThen.share.appUserConfigMode.payWinType
        //: if payWinType == 1 {
        if payWinType == 1 { // 半屏充值页
            //: DumpPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            DumpPushManager.share.attributeMove(webViewType: .RechargeHalfPage)
            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: DumpPushManager.share.func__pushToSubscribeAlert()
            DumpPushManager.share.underCharm()
        }
        //: dismissView()
        forefrontCurrent()
    }

    //: func tapGiftNumberField() {
    func maxField() {
        //: let sendingItems = giftSendItems()
        let sendingItems = currencyPending()
        //: var titleArray = Array<String>()
        var titleArray = [String]()
        //: for i in 1..<sendingItems.count {
        for i in 1 ..< sendingItems.count {
            //: let text = String(numberOfGiftForIndex(index: i))
            let text = String(isStack(index: i))
//            let giftNumArrModel: SprinklerSystemTransformable = sendingItems[i] as! SprinklerSystemTransformable
//            text += "  " + (giftNumArrModel.tag ?? "")
            //: titleArray.append(text)
            titleArray.append(text)
        }
        //: titleArray.append("Custom".localized)
        titleArray.append((String(mainBoldName)).localized)

        //: Config.MenuCellConfig.menuCellHeight = 40
        Config.MenuConfig.menuCellHeight = 40

        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: giftNumButton, titleArray: titleArray, imageArray: [])
        let dropMenu = MenuReactiveCompatible.asStar(anchorView: giftNumButton, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuLightStyle
        dropMenu.menuStyle = .MenuLightStyle
    }

    //: func afterChangeNum() {
    func magazine() {
        //: let cell = self.hotGiftCollectionView.cellForItem(at: giftSelectedModel.lastHotIndexPath) as? TalkingPackageGiftCell
        let cell = self.hotGiftCollectionView.cellForItem(at: giftSelectedModel.lastHotIndexPath) as? HeapReusableView
        //: cell?.updateSelectedNumber(number: giftSelectedModel.hotGiftNum)
        cell?.attitude(number: giftSelectedModel.hotGiftNum)
    }

    /// UICollectionViewDelegete
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titlesArr.count
        return titlesArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard let dataType = GiftDataType(rawValue: section) else { return 0 }
        guard let dataType = InjuryConstantTarget(rawValue: section) else { return 0 }
        //: let count = getGiftData(dataType: dataType).count
        let count = searched(dataType: dataType).count
        // 保证至少有一条数据，否则切换会crash
        //: return (count > 0) ? count:1
        return (count > 0) ? count : 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let identifier = TalkingPackageGiftCell.className()
        let identifier = HeapReusableView.className()
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TalkingPackageGiftCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! HeapReusableView
        // 获取数据
        //: guard let dataType = GiftDataType(rawValue: indexPath.section) else { return cell }
        guard let dataType = InjuryConstantTarget(rawValue: indexPath.section) else { return cell }
        //: let dataArr = getGiftData(dataType: dataType)
        let dataArr = searched(dataType: dataType)
        // 刷新cell
        //: if indexPath.row < dataArr.count {
        if indexPath.row < dataArr.count {
            //: cell.isHidden = false
            cell.isHidden = false
            //: let giftModel: TalkingRoomGiftModel = dataArr[indexPath.row] as! TalkingRoomGiftModel
            let giftModel: ApprovalModelType = dataArr[indexPath.row] as! ApprovalModelType
            //: cell.refreshCellView(currenmodel: giftModel, giftType: dataType)
            cell.margin(currenmodel: giftModel, giftType: dataType)
            //: cell.setChecked(checked: giftSelectedModel.lastHotIndexPath == indexPath)
            cell.betweenAudience(checked: giftSelectedModel.lastHotIndexPath == indexPath)
            //: if giftSelectedModel.lastHotIndexPath == indexPath {
            if giftSelectedModel.lastHotIndexPath == indexPath {
                //: giftSelectedModel.lastHotCell = cell
                giftSelectedModel.lastHotCell = cell
                //: cell.updateSelectedNumber(number: giftSelectedModel.hotGiftNum)
                cell.attitude(number: giftSelectedModel.hotGiftNum)
            }
            //: } else {
        } else {
            //: cell.isHidden = true
            cell.isHidden = true
        }

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard let dataType = GiftDataType(rawValue: indexPath.section) else { return }
        guard let dataType = InjuryConstantTarget(rawValue: indexPath.section) else { return }
        //: let dataArr = getGiftData(dataType: dataType)
        let dataArr = searched(dataType: dataType)
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }

        //: let giftModel: TalkingRoomGiftModel = dataArr[indexPath.row] as! TalkingRoomGiftModel
        let giftModel: ApprovalModelType = dataArr[indexPath.row] as! ApprovalModelType
        //: giftSelectedModel.lastShowType = giftModel.showType
        giftSelectedModel.lastShowType = giftModel.showType
        //: giftSelectedModel.isNoChangeGiftNumber = (giftModel.showType == ChatGiftType.myStery.rawValue)
        giftSelectedModel.isNoChangeGiftNumber = (giftModel.showType == GazetteMultiplierTarget.myStery.rawValue)
        //: blindBoxExplainBtn.isHidden = !(giftModel.showType == ChatGiftType.myStery.rawValue)
        blindBoxExplainBtn.isHidden = !(giftModel.showType == GazetteMultiplierTarget.myStery.rawValue)

        //: if giftSelectedModel.lastHotIndexPath == indexPath {
        if giftSelectedModel.lastHotIndexPath == indexPath {
            //: if self.style == .intimatePhoto || self.style == .intimateVideo {
            if self.style == .intimatePhoto || self.style == .intimateVideo {
                //: return
                return
            }
            //: giftSelectedModel.hotGiftName = giftModel.name
            giftSelectedModel.hotGiftName = giftModel.name
            //: if giftModel.showType == ChatGiftType.myStery.rawValue && style == .normal {
            if giftModel.showType == GazetteMultiplierTarget.myStery.rawValue && style == .normal {
                //: didClickSelectedCellRow(index: 0, title: "")
                maxilla(index: 0, title: "")
                //: return
                return
            }
            //: var sendIndex = indexOfSendItemForNum(num: giftSelectedModel.hotGiftNum)
            var sendIndex = theatergoer(num: giftSelectedModel.hotGiftNum)
            //: sendIndex = safeObjectAtIndexWithSendItems(addIndex: sendIndex+1)
            sendIndex = self.title(addIndex: sendIndex + 1)
            //: didClickSelectedCellRow(index: sendIndex, title: "")
            maxilla(index: sendIndex, title: "")
            //: } else {
        } else {
            //: giftSelectedModel.hotGiftName = giftModel.name
            giftSelectedModel.hotGiftName = giftModel.name
            //: if giftSelectedModel.lastHotCell != nil {
            if giftSelectedModel.lastHotCell != nil {
                //: let cell: TalkingPackageGiftCell = giftSelectedModel.lastHotCell as! TalkingPackageGiftCell
                let cell: HeapReusableView = giftSelectedModel.lastHotCell as! HeapReusableView
                //: cell.setChecked(checked: false)
                cell.betweenAudience(checked: false)
            }
            //: let currentCell: TalkingPackageGiftCell = self.hotGiftCollectionView.cellForItem(at: indexPath) as! TalkingPackageGiftCell
            let currentCell: HeapReusableView = self.hotGiftCollectionView.cellForItem(at: indexPath) as! HeapReusableView
            //: currentCell.setChecked(checked: true)
            currentCell.betweenAudience(checked: true)
            //: giftSelectedModel.lastHotIndexPath = indexPath
            giftSelectedModel.lastHotIndexPath = indexPath
            //: giftSelectedModel.lastHotCell = currentCell
            giftSelectedModel.lastHotCell = currentCell
            //: didClickSelectedCellRow(index: 0, title: "")
            maxilla(index: 0, title: "")
        }
    }

    ///  UIScrollviewDelegate
    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: if scrollView == hotGiftCollectionView {
        if scrollView == hotGiftCollectionView {
            //: updatePageControlAndRefreshUI()
            towardSort()
            //: if isShowRight {
            if isShowRight {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                    //: self.isShowRight = false
                    self.isShowRight = false
                    //: self.titleScrollView.selectedIndex(0, animated: true)
                    self.titleScrollView.weekInAnimated(0, animated: true)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: let dataArr = self.getGiftData(dataType: self.currType)
                        let dataArr = self.searched(dataType: self.currType)
                        //: self.hotGiftCollectionView.contentOffset = CGPointZero
                        self.hotGiftCollectionView.contentOffset = CGPointZero
                        //: if self.hotGiftCollectionView.cellForItem(at: IndexPath(item: 0, section: 0)) != nil {
                        if self.hotGiftCollectionView.cellForItem(at: IndexPath(item: 0, section: 0)) != nil {
                            //: if dataArr.count > 0  {
                            if dataArr.count > 0 {
                                //: self.giftSelectedModel.hotGiftNum = 0
                                self.giftSelectedModel.hotGiftNum = 0
                                //: self.collectionView(self.hotGiftCollectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
                                self.collectionView(self.hotGiftCollectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
                            }
                        }
                    }
                }
            }
        }
    }

    /// 刷新UI
    /// - Parameter force: 是否强制刷新
    //: func updatePageControlAndRefreshUI(force: Bool = false) {
    func towardSort(force: Bool = false) {
        // 计算page
        //: var traillingOffsetX = hotGiftCollectionView.contentOffset.x + ScreenWidth
        var traillingOffsetX = hotGiftCollectionView.contentOffset.x + noti_senseContent
        //: traillingOffsetX = traillingOffsetX < ScreenWidth ? ScreenWidth : traillingOffsetX
        traillingOffsetX = traillingOffsetX < noti_senseContent ? noti_senseContent : traillingOffsetX
        //: var page = Int(traillingOffsetX/ScreenWidth-1)
        var page = Int(traillingOffsetX / noti_senseContent - 1)
        //: page = page < 0 ? 0:page
        page = page < 0 ? 0 : page
        //: let addition = Int(traillingOffsetX)%Int(ScreenWidth) > 0 ? 1:0
        let addition = Int(traillingOffsetX) % Int(noti_senseContent) > 0 ? 1 : 0
        //: page += addition
        page += addition

        // 判断当前选中分区
        //: var giftType = GiftDataType.Hot
        var giftType = InjuryConstantTarget.Hot
        //: if page < hotGiftLayout.hotPage {
        if page < hotGiftLayout.hotPage {
            //: giftType = .Hot
            giftType = .Hot
            //: } else if page < hotGiftLayout.hotPage+hotGiftLayout.vipPage {
        } else if page < hotGiftLayout.hotPage + hotGiftLayout.vipPage {
            //: giftType = .Vip
            giftType = .Vip
            //: page -= hotGiftLayout.hotPage
            page -= hotGiftLayout.hotPage
            //: } else if page < hotGiftLayout.hotPage+hotGiftLayout.vipPage+hotGiftLayout.bagsPage {
        } else if page < hotGiftLayout.hotPage + hotGiftLayout.vipPage + hotGiftLayout.bagsPage {
            //: giftType = .Bags
            giftType = .Bags
            //: page -= (hotGiftLayout.hotPage+hotGiftLayout.vipPage)
            page -= (hotGiftLayout.hotPage + hotGiftLayout.vipPage)
        }

        // 切换分页，刷新UI（添加判断防止频繁调用）
        //: if force == true || currType != giftType {
        if force == true || currType != giftType {
            //: currType = giftType
            currType = giftType
            //: pageControl.numberOfPages = TalkingChatGiftManager.share.getGiftPageCount(perPageCount: 8, dataType: currType)
            pageControl.numberOfPages = FlowEditionGiftManager.share.nature(perPageCount: 8, dataType: currType)
            // 切换title
            //: titleScrollView.currentIndex = currType.rawValue
            titleScrollView.currentIndex = currType.rawValue
            //: titleScrollView.adjustUIWhenBtnOnClickWithAnimate(true)
            titleScrollView.aboveAnimaComment(true)
            //: askforBtn.isHidden = !(currType == GiftDataType.Hot && self.style == .normal && AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue)
            askforBtn.isHidden = !(currType == InjuryConstantTarget.Hot && self.style == .normal && AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue)
            // 盲盒礼物说明 显示/隐藏
            //: if giftSelectedModel.lastShowType == ChatGiftType.myStery.rawValue && giftSelectedModel.lastHotIndexPath.section == currType.rawValue {
            if giftSelectedModel.lastShowType == GazetteMultiplierTarget.myStery.rawValue && giftSelectedModel.lastHotIndexPath.section == currType.rawValue {
                //: setsetBlindBoxExplainData(title: giftSelectedModel.lastDescription ?? "")
                thumb(title: giftSelectedModel.lastDescription ?? "")
                //: } else {
            } else {
                //: blindBoxExplainBtn.isHidden = true
                blindBoxExplainBtn.isHidden = true
            }
            // 空数据缺省图 显示/隐藏
            //: let dataArr = getGiftData(dataType: currType)
            let dataArr = searched(dataType: currType)
            //: giftEmptyView.isHidden = (dataArr.count > 0)
            giftEmptyView.isHidden = (dataArr.count > 0)
            // 手动切换Tab，取消选中状态
            //: if force == false {
            if force == false {
                //: resetGiftSelectedModel()
                photoPrepare()
            }
        }
        //: pageControl.currentPage = page
        pageControl.currentPage = page
    }

    /// 重置选中model
    //: private func resetGiftSelectedModel() {
    private func photoPrepare() {
        //: self.giftSelectedModel = TalkingGiftSelectedModel()
        self.giftSelectedModel = PosterToneTransformable()
        //: self.giftSelectedModel.lastHotIndexPath = IndexPath(item: -1, section: 0)
        self.giftSelectedModel.lastHotIndexPath = IndexPath(item: -1, section: 0)
        /// 导致ihpne11礼物面板消失
        //: hotGiftCollectionView.reloadData()
        hotGiftCollectionView.reloadData()
    }
}

// MARK: - AlongViewDelegate

//: extension TalkingChatGiftView: DropDownMenuViewDelegate {
extension PubliclyViewDelegate: AlongViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func input(index: Int, title: String) {
        //: didClickSelectedCellRow(index: index+1, title: title)
        maxilla(index: index + 1, title: title)
    }

    //: func  didClickSelectedCellRow(index: Int, title: String) {
    func maxilla(index: Int, title _: String) {
        //: let numberOfGift = numberOfGiftForIndex(index: index)
        let numberOfGift = isStack(index: index)
        //: if numberOfGift>0 {
        if numberOfGift > 0 {
            //: giftSelectedModel.hotGiftNum = numberOfGift
            giftSelectedModel.hotGiftNum = numberOfGift
            //: giftNumButton.setTitle(String(numberOfGift), for: .normal)
            giftNumButton.setTitle(String(numberOfGift), for: .normal)
            //: afterChangeNum()
            magazine()
            //: } else {
        } else {
            //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
            popView = AsideView(frame: UIScreen.main.bounds)
            //: popView?.initWithView(view: giftInputNumInputView)
            popView?.viewChin(view: giftInputNumInputView)
            //: popView?.showInView(view: self.window!)
            popView?.validMake(view: self.window!)
            //: giftInputNameLabel.text = giftSelectedModel.hotGiftName
            giftInputNameLabel.text = giftSelectedModel.hotGiftName
            //: giftInputNumTF.text = String(giftSelectedModel.hotGiftNum)
            giftInputNumTF.text = String(giftSelectedModel.hotGiftNum)
            //: giftInputNumTF.becomeFirstResponder()
            giftInputNumTF.becomeFirstResponder()
        }
    }

    //: func numberOfGiftForIndex(index: Int)->Int {
    func isStack(index: Int) -> Int {
        //: let sendingItems = giftSendItems()
        let sendingItems = currencyPending()
        //: if sendingItems.count>0 &&  index < sendingItems.count {
        if sendingItems.count > 0 && index < sendingItems.count {
            //: let giftNumArrModel: TalkingGiftNumArrModel = sendingItems[index] as! TalkingGiftNumArrModel
            let giftNumArrModel: SprinklerSystemTransformable = sendingItems[index] as! SprinklerSystemTransformable
            //: return giftNumArrModel.num!
            return giftNumArrModel.num!
            //: } else {
        } else {
            //: switch index {
            switch index {
            //: case 0:
            case 0:
                //: return 1
                return 1
            //: case 1:
            case 1:
                //: return 9
                return 9
            //: case 2:
            case 2:
                //: return 99
                return 99
            //: case 3:
            case 3:
                //: return 199
                return 199
            //: case 4:
            case 4:
                //: return 599
                return 599
            //: case 5:
            case 5:
                //: return 999
                return 999
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func indexOfSendItemForNum(num: Int)->Int {
    func theatergoer(num: Int) -> Int {
        //: var index = 0
        var index = 0
        //: for i in 0..<giftSendItems().count {
        for i in 0 ..< currencyPending().count {
            //: let model: TalkingGiftNumArrModel = giftSendItems()[i] as! TalkingGiftNumArrModel
            let model: SprinklerSystemTransformable = currencyPending()[i] as! SprinklerSystemTransformable
            //: if model.num == num {
            if model.num == num {
                //: break
                break
            }
            //: index += 1
            index += 1
        }
        //: return index
        return index
    }

    //: func safeObjectAtIndexWithSendItems(addIndex: Int)->Int {
    func title(addIndex: Int) -> Int {
        //: if addIndex > giftSendItems().count-1 {
        if addIndex > currencyPending().count - 1 {
            //: return 0
            return 0
        }
        //: return addIndex
        return addIndex
    }
}

// MARK: - Layout

//: extension TalkingChatGiftView {
extension PubliclyViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func velvetTexturedCur() {
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: let tagView = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-contentHeight))
        let tagView = UIView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage - contentHeight))
        //: tagView.backgroundColor = .clear
        tagView.backgroundColor = .clear
        //: self.addSubview(tagView)
        self.addSubview(tagView)
        //: tagView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(dismissView)))
        tagView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(forefrontCurrent)))

        //: if self.style == .party {
        if self.style == .party {
            //: partyIconView.isHidden = false
            partyIconView.isHidden = false
            //: topView.frame.origin.y = partyIconView.frame.height
            topView.frame.origin.y = partyIconView.frame.height

            //: } else {
        } else {
            //: partyIconView.isHidden = true
            partyIconView.isHidden = true
        }

        //: topView.addSubview(titleScrollView)
        topView.addSubview(titleScrollView)

        //: if self.style == .intimatePhoto || self.style == .intimateVideo {
        if self.style == .intimatePhoto || self.style == .intimateVideo {
            //: topView.addSubview(desLab)
            topView.addSubview(desLab)
            //: desLab.snp.makeConstraints { make in
            desLab.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-12)
                make.trailing.equalToSuperview().offset(-12)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
            }
            //: } else {
        } else {
            //: topView.addSubview(rechargeBtn)
            topView.addSubview(rechargeBtn)
            //: topView.insertSubview(indicatorImage, belowSubview: rechargeBtn)
            topView.insertSubview(indicatorImage, belowSubview: rechargeBtn)
            //: topView.insertSubview(moneyBtn, belowSubview: rechargeBtn)
            topView.insertSubview(moneyBtn, belowSubview: rechargeBtn)

            //: indicatorImage.snp.makeConstraints { make in
            indicatorImage.snp.makeConstraints { make in
                //: make.centerY.equalTo(topView.snp.centerY)
                make.centerY.equalTo(topView.snp.centerY)
                //: make.trailing.equalTo(topView.snp_trailingMargin).offset(-7)
                make.trailing.equalTo(topView.snp_trailingMargin).offset(-7)
            }
            //: rechargeBtn.snp.makeConstraints { make in
            rechargeBtn.snp.makeConstraints { make in
                //: make.top.trailing.bottom.equalTo(topView)
                make.top.trailing.bottom.equalTo(topView)
                //: make.leading.equalTo(moneyBtn.snp.leading)
                make.leading.equalTo(moneyBtn.snp.leading)
            }
            //: moneyBtn.snp.makeConstraints { make in
            moneyBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(topView)
                make.centerY.equalTo(topView)
                //: make.trailing.equalTo(indicatorImage.snp.leading).offset(-7)
                make.trailing.equalTo(indicatorImage.snp.leading).offset(-7)
                //: make.width.greaterThanOrEqualTo(90)
                make.width.greaterThanOrEqualTo(90)
            }
        }

        //: contentView.addSubview(scrollContentView)
        contentView.addSubview(scrollContentView)
        //: scrollContentView.snp.makeConstraints { make in
        scrollContentView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom)
            make.top.equalTo(topView.snp.bottom)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(GiftScrollContentView_H)
            make.height.equalTo(dreamProgressValue)
            //: make.width.equalTo(ScreenWidth)
            make.width.equalTo(noti_senseContent)
        }

        //: scrollContentView.addSubview(giftEmptyView)
        scrollContentView.addSubview(giftEmptyView)
        //: giftEmptyView.snp.makeConstraints { make in
        giftEmptyView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }

        //: scrollContentView.addSubview(hotGiftCollectionView)
        scrollContentView.addSubview(hotGiftCollectionView)
        //: hotGiftCollectionView.snp.makeConstraints { make in
        hotGiftCollectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.height.equalTo(GiftScrollContentView_H)
            make.height.equalTo(dreamProgressValue)
            //: make.width.equalTo(ScreenWidth-10)
            make.width.equalTo(noti_senseContent - 10)
        }

        //: contentView.addSubview(pageControl)
        contentView.addSubview(pageControl)
        //: pageControl.snp.makeConstraints { make in
        pageControl.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.height.equalTo(pageControl_H)
            make.height.equalTo(dreamEnableName)
            //: make.top.equalTo(scrollContentView.snp.bottom)
            make.top.equalTo(scrollContentView.snp.bottom)
        }

        //: contentView.addSubview(bottomView)
        contentView.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(contentView)
            make.leading.trailing.equalTo(contentView)
            //: make.top.equalTo(pageControl.snp.bottom)
            make.top.equalTo(pageControl.snp.bottom)
            //: make.height.equalTo(bottomView_H)
            make.height.equalTo(mainLocalFormatPath)
        }

        //: if self.style == .intimatePhoto || self.style == .intimateVideo {
        if self.style == .intimatePhoto || self.style == .intimateVideo {
            //: bottomView.addSubview(okBtn)
            bottomView.addSubview(okBtn)
            //: okBtn.snp.makeConstraints { make in
            okBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-15)
                make.trailing.equalToSuperview().offset(-15)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(CGSize(width: 60, height: 30))
                make.size.equalTo(CGSize(width: 60, height: 30))
            }
            //: } else {
        } else {
            //: bottomView.addSubview(sendAreaView)
            bottomView.addSubview(sendAreaView)
            //: sendAreaView.snp.makeConstraints { make in
            sendAreaView.snp.makeConstraints { make in
                //: make.trailing.equalTo(bottomView).offset(-9)
                make.trailing.equalTo(bottomView).offset(-9)
                //: make.centerY.equalTo(bottomView)
                make.centerY.equalTo(bottomView)
                //: make.height.equalTo(30)
                make.height.equalTo(30)
                //: make.width.equalTo(120)
                make.width.equalTo(120)
            }
            //: sendAreaView.addSubview(giftNumButton)
            sendAreaView.addSubview(giftNumButton)
            //: giftNumButton.snp.makeConstraints { make in
            giftNumButton.snp.makeConstraints { make in
                //: make.top.leading.bottom.equalTo(sendAreaView)
                make.top.leading.bottom.equalTo(sendAreaView)
                //: make.width.equalTo(sendAreaView).multipliedBy(1.0/2)
                make.width.equalTo(sendAreaView).multipliedBy(1.0 / 2)
            }

            //: sendAreaView.addSubview(sendButton)
            sendAreaView.addSubview(sendButton)
            //: sendButton.snp.makeConstraints { make in
            sendButton.snp.makeConstraints { make in
                //: make.top.trailing.bottom.equalTo(sendAreaView)
                make.top.trailing.bottom.equalTo(sendAreaView)
                //: make.width.equalTo(sendAreaView).multipliedBy(1.0/2)
                make.width.equalTo(sendAreaView).multipliedBy(1.0 / 2)
            }

            //: setBlindBoxExplainBtn()
            elucidate()

            //: bottomView.addSubview(askforBtn)
            bottomView.addSubview(askforBtn)
            //: askforBtn.snp.makeConstraints { make in
            askforBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(9)
                make.leading.equalTo(9)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(CGSize.init(width: 68, height: 30))
                make.size.equalTo(CGSize(width: 68, height: 30))
            }
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func alongOld() {
        //: AdministratorThen.share.loginUserMode.rx
        AdministratorThen.share.loginUserMode.rx
            //: .observeWeakly(String.self, "mf_coin")
            .observeWeakly(String.self, (String(notiMarriedStr.suffix(6)) + String(showMiracleData)))
            //: .observe(on: MainScheduler.instance)
            .observe(on: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value != nil {
                if value != nil {
                    //: self.updateGiftInfo(needReload: false, mf_coin: value!)
                    self.stooper(needReload: false, mf_coin: value!)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 监听刷新背包
        //: TalkingChatGiftManager.share.rx
        FlowEditionGiftManager.share.rx
            //: .observeWeakly(Bool.self, "showBagsRed")
            .observeWeakly(Bool.self, (String(mTapWithinStr.suffix(5)) + "agsRed"))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard value == true else {
                guard value == true else {
                    //: self.titleScrollView.redBagsLab.isHidden = true
                    self.titleScrollView.redBagsLab.isHidden = true
                    //: return
                    return
                }
                // 展示红点
                //: self.titleScrollView.redBagsLab.isHidden = false
                self.titleScrollView.redBagsLab.isHidden = false
                // 刷新礼物接口
                //: TalkingChatGiftManager.share.func__sendGiftEvent(type: self.style, isRefresh: true, completion: {
                FlowEditionGiftManager.share.prefaceCompletion(type: self.style, isRefresh: true, completion: {
                    //: self.updateGiftInfo(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
                    self.stooper(needReload: true, mf_coin: AdministratorThen.share.loginUserMode.mf_coin)
                    //: })
                })
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: func setSeleteMemberList() {
    func minimumRole() {
        //: bottomView.addSubview(seleteObjectBtn)
        bottomView.addSubview(seleteObjectBtn)
        //: seleteObjectBtn.snp.makeConstraints { make in
        seleteObjectBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalTo(bottomView)
            make.centerY.equalTo(bottomView)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(113)
            make.width.equalTo(113)
        }
    }

    //: func setBlindBoxExplainBtn() {
    func elucidate() {
        //: contentView.addSubview(blindBoxExplainBtn)
        contentView.addSubview(blindBoxExplainBtn)
        //: contentView.insertSubview(blindBoxExplainBtn, at: 99)
        contentView.insertSubview(blindBoxExplainBtn, at: 99)
        //: blindBoxExplainBtn.snp.makeConstraints { make in
        blindBoxExplainBtn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.height.equalTo(44)
            make.height.equalTo(44)
            //: make.width.equalTo(340)
            make.width.equalTo(340)
        }
    }
}
