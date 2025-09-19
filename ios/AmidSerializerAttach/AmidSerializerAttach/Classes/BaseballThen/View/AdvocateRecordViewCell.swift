
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_buryName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_video" :*/
fileprivate let notiEditTitle:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e"]
fileprivate let appExtraKey:[Character] = ["o"]

/*: "Receive video calls" :*/
fileprivate let showHelpMoveFormat:String = "Receon grade follow"
fileprivate let mAdvantageIdent:String = "accessdeo"

/*: "icon_me_voice" :*/
fileprivate let dream_beyondResMessage:String = "icon_me_vplayer score for export demonstrate"
fileprivate let dream_soleIdent:String = "OICE"

/*: "Receive voice calls" :*/
fileprivate let appPrettyData:String = "Receivease offer ret lovely"
fileprivate let mainMassiveMessage:String = "ref somebody sense rece "
fileprivate let showPunishName:[Character] = ["c","a","l","l","s"]

/*: "icon_me_randomvideo" :*/
fileprivate let k_transactionValue:[Character] = ["i","c","o","n","_","m","e","_","r","a","n","d","o","m","v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let dreamAssertIdent:String = "Randomabsolute hair capacity zz"

/*: "value" :*/
fileprivate let m_againIdent:String = "vanumbue"

/*: "type" :*/
fileprivate let noti_womanFormat:String = "typtravel"

/*: "videoAuth" :*/
fileprivate let notiFailureHelpKey:[Character] = ["v","i","d","e","o","A","u","t","h"]

/*: "voiceAuth" :*/
fileprivate let noti_calledMsg:String = "vsufficient"
fileprivate let dreamBalloonUrl:[Character] = ["i","c","e","A","u","t","h"]

/*: "randomVideo" :*/
fileprivate let mSpaceData:String = "RAND"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvocateRecordViewCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum MigrationVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class AdvocateRecordViewCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: MigrationVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_buryName.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.afterDisable(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.manualColor()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.fogColor()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(domainChange), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension AdvocateRecordViewCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func nose(type: MigrationVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_video")
            icon.image = UIImage.scribeNumber(name: (String(notiEditTitle) + String(appExtraKey)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(showHelpMoveFormat.prefix(4)) + "ive v" + mAdvantageIdent.replacingOccurrences(of: "access", with: "i") + " calls").localized
            //: switchView.isOn = (AdministratorThen.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (AdministratorThen.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_voice")
            icon.image = UIImage.scribeNumber(name: (String(dream_beyondResMessage.prefix(9)) + dream_soleIdent.lowercased()))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(appPrettyData.prefix(6)) + "e voi" + String(mainMassiveMessage.suffix(3)) + String(showPunishName)).localized
            //: switchView.isOn = (AdministratorThen.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (AdministratorThen.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_randomvideo")
            icon.image = UIImage.scribeNumber(name: (String(k_transactionValue)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(dreamAssertIdent.prefix(6)) + " Video").localized
            //: switchView.isOn = (AdministratorThen.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (AdministratorThen.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func domainChange() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(m_againIdent.replacingOccurrences(of: "numb", with: "l"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(noti_womanFormat.replacingOccurrences(of: "travel", with: "e"))] = (String(notiFailureHelpKey))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(noti_womanFormat.replacingOccurrences(of: "travel", with: "e"))] = (noti_calledMsg.replacingOccurrences(of: "sufficient", with: "o") + String(dreamBalloonUrl))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(noti_womanFormat.replacingOccurrences(of: "travel", with: "e"))] = (mSpaceData.lowercased() + "omVideo")
        }
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        MeThen.legume(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: AdministratorThen.share.loginUserMode.videoAuth = value
                AdministratorThen.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: AdministratorThen.share.loginUserMode.voiceAuth = value
                AdministratorThen.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: AdministratorThen.share.appUserConfigMode.randomVideo = value
                AdministratorThen.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ApplicationKingfisherCompatible.shared as! ApplicationKingfisherCompatible).minCharacter()
        }
    }
}
