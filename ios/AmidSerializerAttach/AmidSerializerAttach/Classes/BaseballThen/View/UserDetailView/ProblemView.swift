
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let m_minimizeValue:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

/*: "bg_others_shadow_up" :*/
fileprivate let main_drownContent:[Character] = ["b","g","_","o","t","h","e","r","s","_","s","h","a","d","o","w","_","u","p"]

/*: "nav_back_black_nor" :*/
fileprivate let mManualText:String = "insert defense golden alsonav_"
fileprivate let mainGenPitchPath:String = "chip"
fileprivate let app_helloName:String = "k_norrise civil"

/*: "btn_detail_more" :*/
fileprivate let kPerformPoseMinimizeTitle:String = "component road forehead civilbtn_detai"
fileprivate let show_goldPath:String = "reward aidel_more"

/*: "Shielding Success" :*/
fileprivate let m_provokeName:String = "outcome note thanks imitation nativeShiel"
fileprivate let mainScreenUrl:String = " Sucoperation session comprehensive lay"

/*: "Unmasking Succeeded" :*/
fileprivate let dream_fluentMessage:[Character] = ["U","n","m","a","s","k","i","n"]
fileprivate let mainExecutiveFactName:String = "route interval publiclyg Su"

/*: "Report" :*/
fileprivate let main_slimUrl:String = "Reportcalled weekly channel"

/*: "Remvoe Block" :*/
fileprivate let k_voicePath:[Character] = ["R","e","m","v","o","e"," ","B","l","o","c","k"]

/*: "Block" :*/
fileprivate let showVolumeCombineIdent:String = "Blockprison plat judge word orange"

/*: "Cancel" :*/
fileprivate let notiFeatureFileMsg:String = "take"
fileprivate let k_tradeValue:String = "ANCEL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProblemView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class ProblemView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = GatherTransformable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        goldAcross()
        //: setupSubViewsConstraint()
        queryed()
        //: bindInteraction()
        eyeContact()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: m_minimizeValue.map{$0^217}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "bg_others_shadow_up")
        imgV.image = UIImage.scribeNumber(name: (String(main_drownContent)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.afterDisable(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .manualColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.scribeNumber(name: (String(mManualText.suffix(4)) + "back_bla" + mainGenPitchPath.replacingOccurrences(of: "chip", with: "c") + String(app_helloName.prefix(5)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(themeWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.scribeNumber(name: (String(kPerformPoseMinimizeTitle.suffix(9)) + String(show_goldPath.suffix(6)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension ProblemView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func pointInTime() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        AdvocateReactiveCompatible.faceBig(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(m_provokeName.suffix(5)) + "ding" + String(mainScreenUrl.prefix(4)) + "cess").localized : (String(dream_fluentMessage) + String(mainExecutiveFactName.suffix(4)) + "cceeded").localized
                //: ProgressHUD.toast(toastStr)
                VillageView.asBalance(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension ProblemView {
    //: @objc private func clickBackButtonAction() {
    @objc private func themeWith() {
        //: DumpPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        DumpPushManager.share.talkVc()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func section() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = ChromosomeMappingView(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(main_slimUrl.prefix(6))).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(k_voicePath)).localized : (String(showVolumeCombineIdent.prefix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.aList(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.describeFromAction()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.replyAction()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func describeFromAction() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = WingView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.smartPress(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func replyAction() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            pointInTime()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        GentleAlertShow.aboveSixth(title: nil, message: show_bottomText, leftBtnTitle: (notiFeatureFileMsg.replacingOccurrences(of: "take", with: "C") + k_tradeValue.lowercased()).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            //: self.req_pullBlackRequest()
            self.pointInTime()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension ProblemView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func commercial(_ userModel: GatherTransformable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == AdministratorThen.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == AdministratorThen.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func goldAcross() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func queryed() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(mNameKey)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLocationMessage)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLocationMessage)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(mNameKey)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: kLocationMessage))
        }
    }

    //: private func bindInteraction() {
    private func eyeContact() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.section()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
