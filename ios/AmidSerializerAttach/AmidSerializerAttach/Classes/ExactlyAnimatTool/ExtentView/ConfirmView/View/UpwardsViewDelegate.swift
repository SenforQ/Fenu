
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let user_ableLikeStr:String = "Increstrength route"
fileprivate let mainRutValue:[Character] = ["a","s","e","："]

/*: "Decrease：" :*/
fileprivate let k_cityKey:String = "Decrease：render concept appearance chemistry guide"

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_fogMsg:[UInt8] = [0xd7,0xd0,0xd7,0xca,0x96,0xdd,0xd1,0xda,0xdb,0xcc,0x84,0x97,0x9e,0xd6,0xdf,0xcd,0x9e,0xd0,0xd1,0xca,0x9e,0xdc,0xdb,0xdb,0xd0,0x9e,0xd7,0xd3,0xce,0xd2,0xdb,0xd3,0xdb,0xd0,0xca,0xdb,0xda]

private func humanBreadSecurity(mp num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "bg_talk_closed_tc" :*/
fileprivate let dream_brandAppearanceMsg:[Character] = ["b","g"]
fileprivate let appExplainProveValue:String = "_talwipe mutual value"
fileprivate let m_laughText:String = "osed_tcreward stroke medium s part"

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let noti_permissionValue:String = "bg_talplot time"
fileprivate let appAcquireIdent:[Character] = ["k","_","c","l","o","s","e","d","_","t","c","_","i","n","t","i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let m_whichMentionName:[Character] = ["b","t","n","_","i","n","t"]
fileprivate let dreamOkValue:[Character] = ["i","m","a","t","e","_","c","l","o","s","e"]

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let showInstallStr:[UInt8] = [0x6e,0x40,0x5f,0x40,0x47,0x4e,0x9,0x4e,0x40,0x4f,0x5d,0x5a,0x9,0xca,0xa9,0xa8,0x44,0x48,0x42,0x40,0x47,0x4e,0x9,0x4a,0x48,0x45,0x45,0x5a,0x9,0x48,0x47,0x4d,0x9,0x5a,0x4c,0x47,0x4d,0x40,0x47,0x4e,0x9,0x59,0x48,0x40,0x4d,0x9,0x44,0x4c,0x5a,0x5a,0x48,0x4e,0x4c,0x5a,0x9,0x4a,0x48,0x47,0x9,0x40,0x47,0x4a,0x5b,0x4c,0x48,0x5a,0x4c,0x9,0x40,0x47,0x5d,0x40,0x44,0x48,0x4a,0x50,0x57]

private func vineBeauty(bucket num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let dreamDrawSharedStr:[Character] = ["1"," ","c","o","i","n"," ","="," ","1"," ","i"]
fileprivate let kProperlyGiftLanguageMessage:String = "beginningtimacy"

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let mainBindFareFormat:[UInt8] = [0x31,0x1e,0x58,0x1b,0x17,0x11,0x16,0xb,0x58,0x19,0xa,0x1d,0x58,0x16,0x17,0xc,0x58,0x1b,0x17,0x16,0xb,0xd,0x15,0x1d,0x1c,0x58,0xf,0x11,0xc,0x10,0x11,0x16,0x58,0x19,0x58,0x1b,0x1d,0xa,0xc,0x19,0x11,0x16,0x58,0x8,0x1d,0xa,0x11,0x17,0x1c,0x58,0x17,0x1e,0x58,0xc,0x11,0x15,0x1d,0x54,0x58,0xc,0x10,0x1d,0x58,0x11,0x16,0xc,0x11,0x15,0x19,0x1b,0x1,0x58,0x14,0x1d,0xe,0x1d,0x14,0x58,0xf,0x11,0x14,0x14,0x58,0x1a,0x1d,0x58,0xa,0x1d,0x1c,0xd,0x1b,0x1d,0x1c,0x56]

private func modelWage(follow num: UInt8) -> UInt8 {
    return num ^ 120
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpwardsViewDelegate.swift
//  AmidSerializerAttach
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class UpwardsViewDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: AsideView?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(user_ableLikeStr.prefix(5)) + String(mainRutValue)).localized, (String(k_cityKey.prefix(9))).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.go()
        //: self.setupSubViewsConstraint()
        self.duringClear()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_fogMsg.map{humanBreadSecurity(mp: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc")
        imag.image = UIImage.scribeNumber(name: (String(dream_brandAppearanceMsg) + String(appExplainProveValue.prefix(4)) + "k_cl" + String(m_laughText.prefix(7))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.scribeNumber(name: (String(noti_permissionValue.prefix(6)) + String(appAcquireIdent)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(BubbleThen.self, forCellReuseIdentifier: BubbleThen.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(m_whichMentionName) + String(dreamOkValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(destabilization), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension UpwardsViewDelegate {
    //: @objc private func closeBtnClick() {
    @objc private func destabilization() {
        //: dismiss()
        suiteNet()
    }

    //: func show() {
    func writtenUntilWho() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = AsideView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.viewChin(view: self)
        //: popView?.showInView(view: CreditsThen.getWindow())
        popView?.validMake(view: CreditsThen.captain())
    }

    //: @objc func dismiss() {
    @objc func suiteNet() {
        //: popView?.dismissView()
        popView?.theme()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension UpwardsViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: BubbleThen.className(), for: indexPath) as! BubbleThen
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.norSpend(msg: String(bytes: showInstallStr.map{vineBeauty(bucket: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.norSpend(msg: (String(dreamDrawSharedStr) + kProperlyGiftLanguageMessage.replacingOccurrences(of: "beginning", with: "n")).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.norSpend(msg: String(bytes: mainBindFareFormat.map{modelWage(follow: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 16)
        titleLab.font = UIFont.imitationClotheStatement(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension UpwardsViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func go() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func duringClear() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
