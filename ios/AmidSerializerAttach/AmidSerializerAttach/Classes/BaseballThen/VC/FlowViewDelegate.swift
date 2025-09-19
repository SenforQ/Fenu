
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mTrustUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Price Settings" :*/
fileprivate let mainCooperativeCloudValue:String = "Pricread expression wage"
fileprivate let userDecreaseData:String = "tinextents"

/*: "5.00" :*/
fileprivate let user_kingName:String = "5.00"

/*: "Chat price settings" :*/
fileprivate let dreamInsideName:[Character] = ["C","h","a","t"," ","p","r","i","c","e"," ","s","e","t","t","i"]
fileprivate let appChanceIdent:[Character] = ["n","g","s"]

/*: "Video call price settings" :*/
fileprivate let dreamSimplyText:String = "po trail magazineVideo ca"
fileprivate let notiNativeUrl:String = "tumble any how bullet distinctivell p"
fileprivate let app_flowWorkerMessage:String = "settlifengs"

/*: "Voice call price settings" :*/
fileprivate let dreamChooseKey:String = "Voiceobserver lack accept"
fileprivate let userPresentationMsg:String = "price ceremony preserve network chemistry"
fileprivate let userRawStr:String = "trim"
fileprivate let show_fingerAgoValue:String = "epasspassings"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FlowViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class FlowViewDelegate: FlexibleViewController {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [ImplementationInexpensivenessTransformable] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [ImplementationInexpensivenessTransformable] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [ImplementationInexpensivenessTransformable] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mTrustUrl.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(mainCooperativeCloudValue.prefix(4)) + "e Set" + userDecreaseData.replacingOccurrences(of: "extent", with: "g")).localized

        //: self.setupSubviews()
        self.capture()
        //: self.setupSubViewsConstraint()
        self.currentTitle()
        //: self.bindInteraction()
        self.execute()
        //: self.setupData()
        self.output()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.landmarkBalance()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(EscapeViewCell.self, forCellReuseIdentifier: EscapeViewCell.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension FlowViewDelegate {
    //: private func setupData() {
    private func output() {
        //: for tempModel in AdministratorThen.share.appUserConfigMode.chatPriceSettings {
        for tempModel in AdministratorThen.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.messagePrice ?? (user_kingName.capitalized))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in AdministratorThen.share.appUserConfigMode.videoPriceSettings {
        for tempModel in AdministratorThen.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in AdministratorThen.share.appUserConfigMode.voicePriceSettings {
        for tempModel in AdministratorThen.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(AdministratorThen.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension FlowViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: EscapeViewCell.className(), for: indexPath) as! EscapeViewCell
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.dismissCookie(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: noti_senseContent, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.landmarkBalance()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: noti_senseContent - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(dreamInsideName) + String(appChanceIdent)).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(dreamSimplyText.suffix(8)) + String(notiNativeUrl.suffix(4)) + "rice " + app_flowWorkerMessage.replacingOccurrences(of: "life", with: "i")).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(dreamChooseKey.prefix(5)) + " call " + String(userPresentationMsg.prefix(6)) + userRawStr.replacingOccurrences(of: "trim", with: "s") + show_fingerAgoValue.replacingOccurrences(of: "pass", with: "t")).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .fluent()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .afterDisable(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = ToneViewDelegate(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.fun()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension FlowViewDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension FlowViewDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension FlowViewDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension FlowViewDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension FlowViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func capture() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func currentTitle() {}

    // 添加事件
    //: private func bindInteraction() {
    private func execute() {}
}
