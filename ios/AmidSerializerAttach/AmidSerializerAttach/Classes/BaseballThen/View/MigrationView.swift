
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiBigMsg:[UInt8] = [0x58,0x5f,0x58,0x45,0x19,0x52,0x5e,0x55,0x54,0x43,0xb,0x18,0x11,0x59,0x50,0x42,0x11,0x5f,0x5e,0x45,0x11,0x53,0x54,0x54,0x5f,0x11,0x58,0x5c,0x41,0x5d,0x54,0x5c,0x54,0x5f,0x45,0x54,0x55]

private func primedNegative(satisfy num: UInt8) -> UInt8 {
    return num ^ 49
}

/*: "btn_chatsettings_unchoice" :*/
fileprivate let kThinkIdent:[Character] = ["b","t","n","_","c","h","a","t","s","e","t","t","i","n","g","s","_","u","n","c","h","o"]
fileprivate let mTempMsg:String = "icexecutive"

/*: "Free" :*/
fileprivate let mainHundredCustomTunName:String = "dit enjoy somebody successfully orFree"

/*: "%@ Gold coins / Message" :*/
fileprivate let showMassiveName:String = "opportunity portion%@ Go"
fileprivate let appEdgePrisonGlassMsg:String = "only retirement bot aidens / "
fileprivate let main_awayData:String = "anyone ready scenarioMessage"

/*: "%@ Gold coins / Min" :*/
fileprivate let dreamDetailUrl:[Character] = ["%","@"," ","G","o","l","d"," "]
fileprivate let appStretchKey:[Character] = ["c"]
fileprivate let show_environmentIdent:[Character] = ["o","i","n","s"," ","/"," ","M","i","n"]

/*: "btn_chatsettings_choiced" :*/
fileprivate let show_bubblePath:String = "btn_choff render bad stream"
fileprivate let app_theTitle:String = "ttlessngs"
fileprivate let dreamTimeUrl:[Character] = ["_","c"]
fileprivate let dream_overRetainTrafficUrl:[Character] = ["h","o","i","c","e","d"]

/*: "#E9E9E9" :*/
fileprivate let user_inmateContent:String = "#E9E9Enetwork special any truth"
fileprivate let showAccountPiStr:[Character] = ["9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MigrationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class ImplementationInexpensivenessTransformable: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class MigrationView: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.invitation()
        //: self.setupSubViewsConstraint()
        self.record()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiBigMsg.map{primedNegative(satisfy: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .manualColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .afterDisable(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.fogColor()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .afterDisable(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.scribeNumber(name: (String(kThinkIdent) + mTempMsg.replacingOccurrences(of: "executive", with: "e")))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension MigrationView {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func database(cellModel: ImplementationInexpensivenessTransformable, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(mainHundredCustomTunName.suffix(4))).localized : (String(showMassiveName.suffix(5)) + "ld coi" + String(appEdgePrisonGlassMsg.suffix(5)) + String(main_awayData.suffix(7))).innerArguments(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(dreamDetailUrl) + String(appStretchKey) + String(show_environmentIdent)).innerArguments(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.BundleImageNamed(name: "btn_chatsettings_choiced") : UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.scribeNumber(name: (String(show_bubblePath.prefix(6)) + "atse" + app_theTitle.replacingOccurrences(of: "less", with: "i") + String(dreamTimeUrl) + String(dream_overRetainTrafficUrl))) : UIImage.scribeNumber(name: (String(kThinkIdent) + mTempMsg.replacingOccurrences(of: "executive", with: "e")))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(AdministratorThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(AdministratorThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(user_inmateContent.prefix(6)) + String(showAccountPiStr))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension MigrationView {
    //: private func setupSubviews() {
    private func invitation() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func record() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
