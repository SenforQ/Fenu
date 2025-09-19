
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let main_ownerTitle:String = "Beatemplate called segment literal"
fileprivate let appStoveId:String = "UTIF"
fileprivate let kAccordName:String = "toutergs"

/*: "icon_me_videoSet_beauty" :*/
fileprivate let dreamWritingUrl:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t","_","b","e","a","u","t"]
fileprivate let app_heavyHundredId:String = "mouth"

/*: "Video Settings" :*/
fileprivate let show_encounterTrustTitle:String = "pocket"
fileprivate let noti_absoluteId:String = "idbag"
fileprivate let m_cameraMessage:String = "tinggirl"

/*: "Enter " :*/
fileprivate let k_animaStr:[Character] = ["E","n","t","e","r"," "]

/*: "Settings" :*/
fileprivate let appCalculateKey:[Character] = ["S","e","t","t","i","n"]
fileprivate let showSwitchingPath:String = "gskip"

/*: " and open " :*/
fileprivate let user_trailKey:[Character] = [" ","a","n","d"," ","o","p","e","n"," "]

/*: "Camera" :*/
fileprivate let mConceptName:[Character] = ["C","a","m","e","r","a"]

/*: " permission to use this function normally" :*/
fileprivate let appPeopleUrl:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20]

/*: "Cancel" :*/
fileprivate let dream_wholeUrl:String = "river visual constant open discountCancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WarnViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class WarnViewDelegate: FlexibleViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(main_ownerTitle.prefix(3)) + appStoveId.lowercased() + "y Set" + kAccordName.replacingOccurrences(of: "outer", with: "in")), (String(dreamWritingUrl) + app_heavyHundredId.replacingOccurrences(of: "mouth", with: "y"))),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.landmarkBalance()
        //: self.title = "Video Settings".localized
        self.title = (show_encounterTrustTitle.replacingOccurrences(of: "pocket", with: "V") + noti_absoluteId.replacingOccurrences(of: "bag", with: "eo") + " Set" + m_cameraMessage.replacingOccurrences(of: "girl", with: "s")).localized
        //: self.setupSubviews()
        self.dedicationThroughSubviews()
        //: self.setupSubViewsConstraint()
        self.washed()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.landmarkBalance()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: TalkingSettingReceiveVideoCell.className())
        table.register(AdvocateRecordViewCell.self, forCellReuseIdentifier: AdvocateRecordViewCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension WarnViewDelegate {
    //: func judgeCameraAuthorization() {
    func top() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        AsidePermissionTool.goopBlock(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isFind == false else {
                guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.iconThemeBringBackPlace(showMsg: m_buildNearbyData)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = FireOpenicialViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                GentleAlertShow.aboveSixth(title: nil, message: (String(k_animaStr)) + "\"" + (String(appCalculateKey) + showSwitchingPath.replacingOccurrences(of: "skip", with: "s")) + "\"" + (String(user_trailKey)) + "\"" + (String(mConceptName)) + "\"" + String(bytes: appPeopleUrl.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(dream_wholeUrl.suffix(6))).localized, rightBtnTitle: (String(appCalculateKey) + showSwitchingPath.replacingOccurrences(of: "skip", with: "s")).localized) {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    GentleAlertShow.someButton()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension WarnViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && user_progressId {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingReceiveVideoCell.className(), for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: AdvocateRecordViewCell = tableView.dequeueReusableCell(withIdentifier: AdvocateRecordViewCell.className(), for: indexPath) as! AdvocateRecordViewCell
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.refreshCell(type: .video)
                cell.nose(type: .video)
                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: cell.refreshCell(type: .voice)
                cell.nose(type: .voice)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && user_progressId else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = MerelyReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.warm(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.shelveExecute(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && user_progressId {
                //: self.judgeCameraAuthorization()
                self.top()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension WarnViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func dedicationThroughSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func washed() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
