
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_userKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_income" :*/
fileprivate let main_belowFormat:[Character] = ["i","c","o","n","_","m","e","_","i","n","c","o","m"]
fileprivate let mManualName:String = "except"

/*: "Income" :*/
fileprivate let noti_massivePublisherData:String = "Incomewindow ok"

/*: "icon_me_male_wallet" :*/
fileprivate let userManMessage:[Character] = ["i","c","o","n","_","m","e","_","m","a","l"]
fileprivate let kTranslationMsg:[Character] = ["e","_","w"]
fileprivate let m_freshData:[Character] = ["a","l","l","e","t"]

/*: "Wallet" :*/
fileprivate let dream_laughIdent:String = "conduct"
fileprivate let mPerfectValue:String = "anonoet"

/*: "#7189F7" :*/
fileprivate let mainImplementUrl:String = "interest vine exclusive salt#7189F7"

/*: "Level" :*/
fileprivate let mAtName:String = "Levelway pad branch"

/*: "icon_me_level" :*/
fileprivate let noti_forwardOnicialPath:String = "icothink"
fileprivate let app_ridUrl:String = "feedbackvfeedbackl"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProposalView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class ProposalView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        passOpen()
        //: setupSubViewsConstraint()
        setupPushRestrictionEnd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_userKey.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(amberCommend), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.afterDisable(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.manualColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue && AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_income")
            icon.image = UIImage.scribeNumber(name: (String(main_belowFormat) + mManualName.replacingOccurrences(of: "except", with: "e")))
            //: lab.text = "Income".localized
            lab.text = (String(noti_massivePublisherData.prefix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_male_wallet")
            icon.image = UIImage.scribeNumber(name: (String(userManMessage) + String(kTranslationMsg) + String(m_freshData)))
            //: lab.text = "Wallet".localized
            lab.text = (dream_laughIdent.replacingOccurrences(of: "conduct", with: "W") + mPerfectValue.replacingOccurrences(of: "no", with: "l")).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.afterDisable(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(mainImplementUrl.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nativeOfClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.afterDisable(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.manualColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(mAtName.prefix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "icon_me_level")
        icon.image = UIImage.scribeNumber(name: (noti_forwardOnicialPath.replacingOccurrences(of: "think", with: "n") + "_me_l" + app_ridUrl.replacingOccurrences(of: "feedback", with: "e")))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.afterDisable(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(mainImplementUrl.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension ProposalView {
    //: func setViewData() {
    func epicLab() {
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: goldCoinsNum.text = "$\(AdministratorThen.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(AdministratorThen.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(AdministratorThen.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(AdministratorThen.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = AdministratorThen.share.loginUserMode.level
        myLevelNum.text = AdministratorThen.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func amberCommend() {
        //: incomeClick()
        takeWithoutClick()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func nativeOfClick() {
        //: DumpPushManager.share.func__pushToWebVC(webViewType: .Level)
        DumpPushManager.share.anvil(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func takeWithoutClick() {
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appStatus != AppSkinStatus.special.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appStatus != BecauseMultiplierTarget.special.rawValue {
            //: if AdministratorThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
            if AdministratorThen.share.loginUserMode.isTPAuth == AutomaticMeasurable.isSuccessed.rawValue {
                //: DumpPushManager.share.func__pushToWebVC(webViewType: .Balance)
                DumpPushManager.share.anvil(webViewType: .Balance)
                //: } else {
            } else {
                //: DumpPushManager.share.func__pushUserVerifyController(toast: nil)
                DumpPushManager.share.supra(toast: nil)
            }

            //: } else {
        } else {
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            DumpPushManager.share.anvil(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension ProposalView {
    /// 添加视图
    //: private func setupSubviews() {
    private func passOpen() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupPushRestrictionEnd() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (noti_senseContent - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
