
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mCollectionFormat:[UInt8] = [0x7d,0x7a,0x7d,0x60,0x3c,0x77,0x7b,0x70,0x71,0x66,0x2e,0x3d,0x34,0x7c,0x75,0x67,0x34,0x7a,0x7b,0x60,0x34,0x76,0x71,0x71,0x7a,0x34,0x7d,0x79,0x64,0x78,0x71,0x79,0x71,0x7a,0x60,0x71,0x70]

private func sickPerson(engage num: UInt8) -> UInt8 {
    return num ^ 20
}

/*: "icon_livetc_warn" :*/
fileprivate let dream_recommendationMsg:String = "icon_lta icon vid a attribute"
fileprivate let userParticleTraceUrl:String = "c_warnrun bag"

/*: "System notification" :*/
fileprivate let user_moreTitle:String = "inside processor a unknownSyste"
fileprivate let k_givenFormat:[Character] = ["m"," ","n","o","t","i","f","i","c","a","t","i","o","n"]

/*: "Upload Now" :*/
fileprivate let app_partIdent:String = "worker recording conduct ovalUploa"

/*: "btn_me_program_photo_delete" :*/
fileprivate let m_tickPath:[Character] = ["b","t","n","_","m","e","_","p","r","o","g","r","a","m","_","p","h","o","t"]
fileprivate let app_resName:[Character] = ["o","_","d"]
fileprivate let app_allMessage:String = "ediskete"

/*: "content" :*/
fileprivate let notiSaveMsg:String = "condocument"
fileprivate let k_mayUrl:String = "equallyt"

/*: "jumpKey" :*/
fileprivate let app_tickId:String = "jumpKeylance distinctive"

/*: "uploadUserHeaderPic" :*/
fileprivate let dreamReadData:String = "somethingloa"
fileprivate let m_whetherTitle:String = "eaderPiharvest white"
fileprivate let userHimIdent:String = "approach"

/*: "truePersonAuth" :*/
fileprivate let mDropName:[Character] = ["t","r","u","e","P","e","r","s","o"]
fileprivate let mainGivenKey:[Character] = ["n","A","u","t","h"]

/*: "headPic" :*/
fileprivate let appEnvironmentValue:String = "headPimake publisher"
fileprivate let appSpringKey:[Character] = ["c"]

/*: "Modify the success" :*/
fileprivate let mPlatMsg:[Character] = ["M","o","d","i","f"]
fileprivate let k_detailKey:[Character] = ["y"," ","t","h","e"," ","s","u"]
fileprivate let showLockName:[Character] = ["c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NativeView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class NativeView: UIView {
    //: var popView: TalkingPopView?
    var popView: AsideView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.leafage()
        //: self.setupSubViewsConstraint()
        self.fruit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mCollectionFormat.map{sickPerson(engage: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        imag.image = UIImage.scribeNumber(name: (String(dream_recommendationMsg.prefix(6)) + "ivet" + String(userParticleTraceUrl.prefix(6))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.afterDisable(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(user_moreTitle.suffix(5)) + String(k_givenFormat)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.afterDisable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.tabOn(colors: UIColor.printColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(app_partIdent.suffix(5)) + "d Now").localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.imitationClotheStatement(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(m_tickPath) + String(app_resName) + app_allMessage.replacingOccurrences(of: "disk", with: "l"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(goByClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension NativeView {
    //: func setViewData(dit: [String: String]) {
    func cease(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(notiSaveMsg.replacingOccurrences(of: "document", with: "te") + k_mayUrl.replacingOccurrences(of: "equally", with: "n"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(app_tickId.prefix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func finishClick() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (dreamReadData.replacingOccurrences(of: "something", with: "up") + "dUserH" + String(m_whetherTitle.prefix(7)) + userHimIdent.replacingOccurrences(of: "approach", with: "c")) {
            //: updatePhotoButtonClick()
            restoreClick()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(mDropName) + String(mainGivenKey)) {
            //: AdministratorThen.share.loginUserMode.isTPAuth = "3"
            AdministratorThen.share.loginUserMode.isTPAuth = "3"
            //: DumpPushManager.share.func__pushUserVerifyController(toast: nil)
            DumpPushManager.share.supra(toast: nil)
            //: dismiss()
            sinceIn()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func goByClick() {
        //: dismiss()
        sinceIn()
    }

    //: func show() {
    func componentChannel() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = AsideView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.viewChin(view: self)
        //: popView?.showInView(view: CreditsThen.getWindow())
        popView?.validMake(view: CreditsThen.captain())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func sinceIn() {
        //: popView?.dismissView()
        popView?.theme()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func restoreClick() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        AsidePermissionTool.replaceDown(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = GagePickTool.examine(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.springEquinox()?.present(vc, animated: true)
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
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.secondTabulation(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.sinceIn()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.sinceIn()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func secondTabulation(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.compressedFromAssemblage()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(appEnvironmentValue.prefix(6)) + String(appSpringKey)): resultData]
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        MeThen.openly(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.sinceIn()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.bringHomePublishGap(showMsg: (String(mPlatMsg) + String(k_detailKey) + String(showLockName)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: AdministratorThen.share.loginUserMode.headPic = data["headPic"] as? String
            AdministratorThen.share.loginUserMode.headPic = data[(String(appEnvironmentValue.prefix(6)) + String(appSpringKey))] as? String
            //: AdministratorThen.share.loginUserMode.headPicStatus = 0
            AdministratorThen.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension NativeView {
    // 添加视图
    //: private func setupSubviews() {
    private func leafage() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fruit() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
