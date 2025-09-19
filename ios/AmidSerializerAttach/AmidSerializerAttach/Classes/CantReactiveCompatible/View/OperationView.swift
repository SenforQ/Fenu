
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_saleKey:[UInt8] = [0xc0,0xc5,0xc0,0xcb,0x7f,0xba,0xc6,0xbb,0xbc,0xc9,0x91,0x80,0x77,0xbf,0xb8,0xca,0x77,0xc5,0xc6,0xcb,0x77,0xb9,0xbc,0xbc,0xc5,0x77,0xc0,0xc4,0xc7,0xc3,0xbc,0xc4,0xbc,0xc5,0xcb,0xbc,0xbb]

fileprivate func todayBar(oval num: UInt8) -> UInt8 {
    let value = Int(num) + 169
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "More attractive photo more calls" :*/
fileprivate let user_powFormat:[UInt8] = [0x29,0xb,0x16,0x1,0x44,0x5,0x10,0x10,0x16,0x5,0x7,0x10,0xd,0x12,0x1,0x44,0x14,0xc,0xb,0x10,0xb,0x44,0x9,0xb,0x16,0x1,0x44,0x7,0x5,0x8,0x8,0x17]

/*: "Upload any photo you like" :*/
fileprivate let k_straightUrl:String = "Uploaslim rocket split accuracy"
fileprivate let k_buttonBeanCastData:String = "powder include encounter send statementy ph"
fileprivate let k_publicationNoticeRemoveStr:String = "boy from provideou like"

/*: "F4F4F4" :*/
fileprivate let noti_promptData:String = "capture"
fileprivate let notiUnderName:String = "portrait ever satisfy4F4F4"

/*: "btn_add_head_cover_nor" :*/
fileprivate let dream_buryMustMessage:[Character] = ["b","t","n","_","a","d","d","_","h","e","a","d","_","c","o"]
fileprivate let show_headStr:String = "color accordver_nor"

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let noti_adName:[UInt8] = [0x5e,0x62,0x6b,0x6f,0x7d,0x6b,0x2e,0x7b,0x7e,0x62,0x61,0x6f,0x6a,0x2e,0x6f,0x2e,0x6d,0x62,0x6b,0x6f,0x7c,0x2e,0x6f,0x60,0x6a,0x2e,0x6c,0x6b,0x6f,0x7b,0x7a,0x67,0x68,0x7b,0x62,0x2e,0x7e,0x66,0x61,0x7a,0x61,0x2e,0x61,0x68,0x2e,0x77,0x61,0x7b,0x7c,0x7d,0x6b,0x62,0x68]

private func ourAge(serious num: UInt8) -> UInt8 {
    return num ^ 14
}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let noti_replaceName:[UInt8] = [0xfa,0x1b,0xcc,0x22,0x15,0x1b,0x18,0x11,0x1a,0xf,0x11,0xd8,0xcc,0x1c,0x1b,0x1e,0x1a,0x1b,0x13,0x1e,0xd,0x1c,0x14,0x25,0xd8,0xcc,0x1b,0x1e,0xcc,0x1c,0x1b,0x18,0x15,0x20,0x15,0xf,0x1f,0xcc,0xd,0x18,0x18,0x1b,0x23,0x11,0x10]

fileprivate func glassSearch(animal num: UInt8) -> UInt8 {
    let value = Int(num) - 172
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Next" :*/
fileprivate let dreamLightName:[Character] = ["N","e","x","t"]

/*: "edit_head_Image_male_ :*/
fileprivate let mLipPath:String = "edit_foundation pan grant attention"
fileprivate let m_sourceAdminId:String = "Imagtun boa detect select"

/*: "edit_head_Image_ :*/
fileprivate let userHistoryKey:String = "fundamental branch runningedit_"
fileprivate let appPhaseKey:[Character] = ["h","e","a","d","_","I","m","a","g","e","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OperationView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class OperationView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: BaseballInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.kind()
        //: self.setupSubViewsConstraint()
        self.formatForm()
        //: self.bindInteraction()
        self.head()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_saleKey.map{todayBar(oval: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .afterDisable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .manualColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if AdministratorThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: user_powFormat.map{$0^100}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(k_straightUrl.prefix(5)) + "d an" + String(k_buttonBeanCastData.suffix(4)) + "oto y" + String(k_publicationNoticeRemoveStr.suffix(7))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (noti_promptData.replacingOccurrences(of: "capture", with: "F") + String(notiUnderName.suffix(5))))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = AdministratorThen.share.userFillInfoMode.headImage ?? nil
        let headImg = AdministratorThen.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.BundleImageNamed(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.scribeNumber(name: (String(dream_buryMustMessage) + String(show_headStr.suffix(7)))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .afterDisable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .portion()
        //: if AdministratorThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if AdministratorThen.share.userFillInfoMode.sex == RecordNameLiteral.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: noti_adName.map{ourAge(serious: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: noti_replaceName.map{glassSearch(animal: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(dreamLightName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.tabOn(colors: UIColor.printColor(), size: CGSize(width: noti_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension OperationView {
    // 添加视图
    //: private func setupSubviews() {
    private func kind() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func formatForm() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (noti_senseContent - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if AdministratorThen.share.userFillInfoMode.sex == "1" {
            if AdministratorThen.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.scribeNumber(name: (String(mLipPath.prefix(5)) + "head_" + String(m_sourceAdminId.prefix(4)) + "e_male_") + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.scribeNumber(name: (String(userHistoryKey.suffix(5)) + String(appPhaseKey)) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func head() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
