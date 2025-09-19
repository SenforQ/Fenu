
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appCoreTitle:[UInt8] = [0x20,0x27,0x20,0x3d,0x61,0x2a,0x26,0x2d,0x2c,0x3b,0x73,0x60,0x69,0x21,0x28,0x3a,0x69,0x27,0x26,0x3d,0x69,0x2b,0x2c,0x2c,0x27,0x69,0x20,0x24,0x39,0x25,0x2c,0x24,0x2c,0x27,0x3d,0x2c,0x2d]

private func earlyMoment(scene num: UInt8) -> UInt8 {
    return num ^ 73
}

/*: "btn_daily_todayBg_nor" :*/
fileprivate let mainStartKey:String = "authorize harvestbtn_da"
fileprivate let mainAudienceIdent:[Character] = ["a","y","B","g","_","n","o","r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let mSimultaneouslyData:String = "btn_dappropriate size interest"
fileprivate let dreamApartmentMessage:String = "yle1_norstretch greet restore"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let appResignName:String = "identity into cast unitbtn_d"
fileprivate let main_averageHoldIdent:String = "odafuture"
fileprivate let mDueName:String = "correct sunlight ordinary will_nor"

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let dreamEffectClubMsg:[Character] = ["b","t","n","_","d","a"]
fileprivate let dreamErrorValue:String = "ily_nclick must"
fileprivate let appRefuseContent:String = "gnIn_nortrue trust likelihood"

/*: "btn_daily_signIn_nor" :*/
fileprivate let dreamVidPath:String = "pitch tip goldbtn_dai"
fileprivate let userUponFiscalMessage:[Character] = ["l","y","_"]
fileprivate let userRemovalIdent:[Character] = ["s","i","g","n","I","n","_","n","o","r"]

/*: "btn_daily_today_nor" :*/
fileprivate let notiColorfulTitle:String = "btn_daiprocess clothes someone route bad"
fileprivate let app_steadMsg:[Character] = ["l","y","_","t"]
fileprivate let k_latePicIdent:String = "oday_noropening multiple"

/*: "#FF8F1A" :*/
fileprivate let user_richName:[Character] = ["#","F","F","8","F","1"]
fileprivate let notiThenKey:[Character] = ["A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimberThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class LimberThen: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appCoreTitle.map{earlyMoment(scene: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.onerCenter()
        //: self.setupSubViewsConstraint()
        self.singleSetup()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayBg_nor")
        img.image = UIImage.scribeNumber(name: (String(mainStartKey.suffix(6)) + "ily_tod" + String(mainAudienceIdent)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_style1_nor")
        img.image = UIImage.scribeNumber(name: (String(mSimultaneouslyData.prefix(5)) + "aily_st" + String(dreamApartmentMessage.prefix(8))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayLight_nor")
        img.image = UIImage.scribeNumber(name: (String(appResignName.suffix(5)) + "aily_t" + main_averageHoldIdent.replacingOccurrences(of: "future", with: "y") + "Light" + String(mDueName.suffix(4))))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 14)
        lab.font = UIFont.imitationClotheStatement(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension LimberThen {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func naturalEventBubble(model: BaseballThen) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.pingfangRugularFont(fontSize: 17)
        dayLab.font = UIFont.soil(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.scribeNumber(name: (String(dreamEffectClubMsg) + String(dreamErrorValue.prefix(5)) + "otSi" + String(appRefuseContent.prefix(8))))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.fluent()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.scribeNumber(name: (String(dreamVidPath.suffix(7)) + String(userUponFiscalMessage) + String(userRemovalIdent)))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.fluent()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.scribeNumber(name: (String(notiColorfulTitle.prefix(7)) + String(app_steadMsg) + String(k_latePicIdent.prefix(8))))
            //: dayLab.font = UIFont.pingfangMediumFont(fontSize: 17)
            dayLab.font = UIFont.imitationClotheStatement(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(user_richName) + String(notiThenKey)))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.scribeNumber(name: (String(notiColorfulTitle.prefix(7)) + String(app_steadMsg) + String(k_latePicIdent.prefix(8))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.portion()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension LimberThen {
    // 添加视图
    //: private func setupSubviews() {
    private func onerCenter() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func singleSetup() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
