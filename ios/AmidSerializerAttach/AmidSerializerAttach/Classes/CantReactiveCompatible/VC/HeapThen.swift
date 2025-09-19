
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mTimeStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let dreamAccountIdent:String = "stepppl"
fileprivate let m_finishName:String = "败，请稍后再试"

/*: "google 授权失败，请稍后再试" :*/
fileprivate let app_anyoneDelayValue:[Character] = ["g","o","o","g","l","e"," ","授","权","\u{5931}","\u{8d25}","\u{ff0c}","\u{8bf7}","稍"]
fileprivate let showDrownValue:String = "后再试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeapThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class HeapThen: FlexibleViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mTimeStr.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.setup()
        //: self.setupSubViewsConstraint()
        self.privacy()
        //: self.bindInteraction()
        self.elementLay()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: DayReactiveCompatible = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = DayReactiveCompatible()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension HeapThen {
    //: func req_thirdLogin(_ type: LoginType) {
    func after(_ type: EditionTableConvertible) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            CantReactiveCompatible.shared.ping { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (dreamAccountIdent.replacingOccurrences(of: "step", with: "a") + "e 授权\u{5931}" + m_finishName.capitalized))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                VillageView.projectShow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                InviteeRequestTool.cornerInputCompletion(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    VillageView.statusDismiss()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            IndigenousLoginManager.shared.eventPop(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (String(app_anyoneDelayValue) + showDrownValue.capitalized))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                VillageView.projectShow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                InviteeRequestTool.cornerInputCompletion(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    VillageView.statusDismiss()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = PubliclyViewController(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = PubliclyViewController(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension HeapThen {
    //: func loginAction(type: LoginType) {
    func render(type: EditionTableConvertible) {
        //: LoginPrivacyPolicyView().showView {
        PubliclyView().host {
            //: self.req_thirdLogin(type)
            self.after(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension HeapThen {
    // 添加视图
    //: private func setupSubviews() {
    private func setup() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: EditionTableConvertible) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.render(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func privacy() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func elementLay() {}
}
