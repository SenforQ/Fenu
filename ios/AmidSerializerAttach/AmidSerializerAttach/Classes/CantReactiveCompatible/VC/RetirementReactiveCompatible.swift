
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_revenueName:[UInt8] = [0xcc,0xd1,0xcc,0xd7,0x8b,0xc6,0xd2,0xc7,0xc8,0xd5,0x9d,0x8c,0x83,0xcb,0xc4,0xd6,0x83,0xd1,0xd2,0xd7,0x83,0xc5,0xc8,0xc8,0xd1,0x83,0xcc,0xd0,0xd3,0xcf,0xc8,0xd0,0xc8,0xd1,0xd7,0xc8,0xc7]

fileprivate func gameVisitor(site num: UInt8) -> UInt8 {
    let value = Int(num) - 99
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let main_transactionFormat:String = "bronze and s installPerson"
fileprivate let noti_orangeKey:String = "gallerymation"

/*: "male" :*/
fileprivate let noti_assetPreviousTitle:[UInt8] = [0xbb,0xaf,0xba,0xb3]

fileprivate func regionDrag(added num: UInt8) -> UInt8 {
    let value = Int(num) + 178
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let m_wifeBoardMsg:String = "emptyemale"

/*: "newHeadPic" :*/
fileprivate let showReadReportName:String = "accord err carriernewHead"
fileprivate let appBindStr:String = "Picschedule follow"

/*: "invite_code" :*/
fileprivate let main_sinkName:String = "ivolumei"

/*: "codeFillType" :*/
fileprivate let dreamPanelValue:String = "firm cropcodeF"
fileprivate let notiCharacterIdent:String = "illTypebeautiful given"

/*: "RegisterSuccess" :*/
fileprivate let dreamCommunicateValue:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RetirementReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class RetirementReactiveCompatible: FlexibleViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_revenueName.map{gameVisitor(site: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        gratedOp(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(main_transactionFormat.suffix(6)) + "al inf" + noti_orangeKey.replacingOccurrences(of: "gallery", with: "or")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.outsideWeekSubviews()
        //: self.setupSubViewsConstraint()
        self.remarkHolder()
        //: self.bindInteraction()
        self.rating()
        //: addTapGestureRecognizer()
        donkeyEngine()

        //: func__checkFinishBtnState()
        sweep()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: OperationView = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = OperationView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension RetirementReactiveCompatible {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func golden() {
        //: super.naviPopback()
        super.golden()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(show_readKey)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_assetPreviousTitle.map{regionDrag(added: $0)}, encoding: .utf8)! : (m_wifeBoardMsg.replacingOccurrences(of: "empty", with: "f")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func shouldAction() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(AdministratorThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(app_adjustValue)_\(AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.male.rawValue ? String(bytes: noti_assetPreviousTitle.map{regionDrag(added: $0)}, encoding: .utf8)! : (m_wifeBoardMsg.replacingOccurrences(of: "empty", with: "f")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        k_hugeName.hour(eventID: eventID)

        //: if AdministratorThen.share.userFillInfoMode.headImage != nil {
        if AdministratorThen.share.userFillInfoMode.headImage != nil {
            //: let image = AdministratorThen.share.userFillInfoMode.headImage!
            let image = AdministratorThen.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(showReadReportName.suffix(7)) + String(appBindStr.prefix(3)))] = image.jpegData(compressionQuality: 1)
        }
        //: if AdministratorThen.share.userFillInfoMode.inviteCode.count > 0 {
        if AdministratorThen.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = AdministratorThen.share.userFillInfoMode.inviteCode
            params[(main_sinkName.replacingOccurrences(of: "volume", with: "nv") + "te_code")] = AdministratorThen.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: show_beautyName)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(main_sinkName.replacingOccurrences(of: "volume", with: "nv") + "te_code")] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(dreamPanelValue.suffix(5)) + String(notiCharacterIdent.prefix(7)))] = 1
            }
        }

        //: if AdministratorThen.share.userFillInfoMode.sex == "1" {
        if AdministratorThen.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            VillageView.projectShow()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            InviteeRequestTool.until(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                VillageView.statusDismiss()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: dream_lessMessage, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    WingAdjustManager.share.addExposureKey(key: (String(dreamCommunicateValue)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    GatherJawAnalyticsManager.share.earthyGroupAction(name: (String(dreamCommunicateValue)))

                    //: if AdministratorThen.share.loginUserMode.remindBindEmail == true {
                    if AdministratorThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: DumpPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            DumpPushManager.share.limitWith(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = PosterLogReactiveCompatible()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.springEquinox()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func sweep() {
        //: let headImg = AdministratorThen.share.userFillInfoMode.headImage ?? nil
        let headImg = AdministratorThen.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension RetirementReactiveCompatible: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func funcVoice() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        AsidePermissionTool.replaceDown(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = GagePickTool.examine(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: DumpPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                DumpPushManager.share.talkVc()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: AdministratorThen.share.userFillInfoMode.headImage = photos![0]
                            AdministratorThen.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.sweep()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension RetirementReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func outsideWeekSubviews() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func remarkHolder() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func rating() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: BaseballInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                funcVoice()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.shouldAction()
                //: break
            }

            //: return
        }
    }
}
