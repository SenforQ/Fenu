
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let main_robotValue:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a"]
fileprivate let userDownRemindIdent:String = "greet limited businessng_de"

/*: "Popular" :*/
fileprivate let app_bucketId:String = "table memoryPopular"

/*: "777777" :*/
fileprivate let noti_pressureId:[Character] = ["7","7","7","7","7","7"]

/*: "icon_moment_news_nor" :*/
fileprivate let dreamColorMessage:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_","n","e","w","s","_"]
fileprivate let m_temptFormat:[Character] = ["n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let show_decideClubValue:[Character] = ["i","c","o","n","_","f","r","e","e","_","p","r","e"]

/*: "num" :*/
fileprivate let notiSufficientData:String = "knowum"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TaMechanismViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class TaMechanismViewController: FlexibleViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        uniform()
        //: setupSubViewsConstraint()
        explainConstraint()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(notifDelete), name: user_keyContent, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        addressDorsalVertebra()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.scribeNumber(name: (String(main_robotValue) + String(userDownRemindIdent.suffix(5)) + "fault")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: MerelyViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = MerelyViewDelegate()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = kLocationMessage
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [AdvocateViewDelegate()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(app_bucketId.suffix(7))).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .afterDisable(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .afterDisable(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(noti_pressureId)))!
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

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(dreamColorMessage) + String(m_temptFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(should), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: SignalView = {
        //: let label = BadgeLab()
        let label = SignalView()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.scribeNumber(name: (String(show_decideClubValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(localIn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension TaMechanismViewController {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func addressDorsalVertebra() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        LiteralReactiveCompatible.remind { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.refreshUponNewsbadge(num: json[(notiSufficientData.replacingOccurrences(of: "know", with: "n"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension TaMechanismViewController {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func should() {
        //: refreshNewsbadge(num: 0)
        refreshUponNewsbadge(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = VillageAccountThen()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func notifDelete() {
        //: freeBtnClickEvent()
        localIn()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func localIn() {
        //: if AdministratorThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue, AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if AdministratorThen.share.loginUserMode.isTPAuth != AutomaticMeasurable.isSuccessed.rawValue, AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            DrawReactiveCompatible.reStart { _, _, _ in
                //: if !AdministratorThen.share.loginUserMode.isNaUser,
                if !AdministratorThen.share.loginUserMode.isNaUser,
                   //: AdministratorThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   AdministratorThen.share.loginUserMode.isTPAuth != AutomaticMeasurable.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ShrinkWindowManager.shared.pinLap()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.circle()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            circle()
        }
    }

    //: private func pushFreeVC() {
    private func circle() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = noti_foundData.bool(forKey: main_titleFormat)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = ApplicationViewDelegate()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any TowardMechanismControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        LanceReactiveCompatible().anyBlock {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - TowardNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension TaMechanismViewController: TowardNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func squareElect(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension TaMechanismViewController {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func refreshUponNewsbadge(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func uniform() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func explainConstraint() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + mNameKey)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(mNameKey)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
