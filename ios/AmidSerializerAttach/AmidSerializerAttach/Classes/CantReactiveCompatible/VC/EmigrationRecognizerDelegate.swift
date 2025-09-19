
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let k_magazineValue:[Character] = ["P","e","r","s","o","n","a","l"," ","i"]
fileprivate let main_scoreFormat:[Character] = ["n","f","o","r","m","a","t","i","o","n"]

/*: "male" :*/
fileprivate let notiRefData:[UInt8] = [0x34,0x38,0x35,0x3c]

/*: "female" :*/
fileprivate let showDepthScopeStr:String = "fealiveale"

/*: "sex" :*/
fileprivate let showFormTitle:String = "senotice"

/*: "nickname" :*/
fileprivate let mainAliveKey:String = "transition"
fileprivate let k_tunExtentValue:[Character] = ["i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let notiDistantKey:String = "bidailythda"
fileprivate let show_feedbackId:String = "quantity"

/*: "User :*/
fileprivate let kPlatSaltFormat:[Character] = ["U","s","e","r"]

/*: "invite_code" :*/
fileprivate let dream_officialTitle:[UInt8] = [0xc3,0xc8,0xd0,0xc3,0xce,0xbf,0xb9,0xbd,0xc9,0xbe,0xbf]

fileprivate func databaseHung(curve num: UInt8) -> UInt8 {
    let value = Int(num) + 166
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmigrationRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class EmigrationRecognizerDelegate: FlexibleViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        gratedOp(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: AdministratorThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            AdministratorThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: AdministratorThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            AdministratorThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(k_magazineValue) + String(main_scoreFormat)).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        list()
        //: setupSubViewsConstraint()
        day()
        //: bindInteraction()
        adhere()
        //: addTapGestureRecognizer()
        donkeyEngine()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: EditPubInfoFindBirdSeyeView = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = EditPubInfoFindBirdSeyeView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension EmigrationRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func golden() {
        //: super.naviPopback()
        super.golden()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(mainSampleStr)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: notiRefData.map{$0^89}, encoding: .utf8)! : (showDepthScopeStr.replacingOccurrences(of: "alive", with: "m")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func fail() {
        //: if AdministratorThen.share.userFillInfoMode.nickName.count <= 0 {
        if AdministratorThen.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            wait()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = AdministratorThen.share.userFillInfoMode.sex
        params[(showFormTitle.replacingOccurrences(of: "notice", with: "x"))] = AdministratorThen.share.userFillInfoMode.sex
        //: params["nickname"] = AdministratorThen.share.userFillInfoMode.nickName
        params[(mainAliveKey.replacingOccurrences(of: "transition", with: "n") + String(k_tunExtentValue))] = AdministratorThen.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", AdministratorThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", AdministratorThen.share.userFillInfoMode.birthDay))-\(AdministratorThen.share.userFillInfoMode.birthYear)"
        params[(notiDistantKey.replacingOccurrences(of: "daily", with: "r") + show_feedbackId.replacingOccurrences(of: "quantity", with: "y"))] = "\(String(format: "%.2d", AdministratorThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", AdministratorThen.share.userFillInfoMode.birthDay))-\(AdministratorThen.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = RetirementReactiveCompatible()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        springEquinox()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func combine() {
        //: getRandomNickname()
        wait()
        //: AdministratorThen.share.userFillInfoMode.setBirth()
        AdministratorThen.share.userFillInfoMode.anConversation()
        //: AdministratorThen.share.userFillInfoMode.inviteCode = ""
        AdministratorThen.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        fail()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func wait() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: AdministratorThen.share.userFillInfoMode.nickName = "User\(randCode)"
        AdministratorThen.share.userFillInfoMode.nickName = (String(kPlatSaltFormat)) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension EmigrationRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func list() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func day() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func adhere() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: BaseballInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(main_guideProductionText)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: notiRefData.map{$0^89}, encoding: .utf8)! : (showDepthScopeStr.replacingOccurrences(of: "alive", with: "m")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                k_hugeName.hour(eventID: eventID)

                // 校验验证码
                //: if AdministratorThen.share.userFillInfoMode.inviteCode.count > 0 {
                if AdministratorThen.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": AdministratorThen.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: dream_officialTitle.map{databaseHung(curve: $0)}, encoding: .utf8)!: AdministratorThen.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    InviteeRequestTool.pickOutCompletion(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.fail()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.fail()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(mainDailyId)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: notiRefData.map{$0^89}, encoding: .utf8)! : (showDepthScopeStr.replacingOccurrences(of: "alive", with: "m")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                k_hugeName.hour(eventID: eventID)
                //: self.func__skipBtnAction()
                self.combine()
            }
        }
    }
}
