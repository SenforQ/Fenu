
//: Declare String Begin

/*: "Follow" :*/
fileprivate let dreamKnowIdent:[Character] = ["F","o","l","l","o","w"]

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let dreamAccountingFadeText:[UInt8] = [0xe6,0xdb,0xc2,0x88,0x92,0xf1,0xd3,0xdc,0x95,0xc6,0x92,0xd7,0xd3,0xc0,0xdc,0x92,0xc2,0xdd,0xdb,0xdc,0xc6,0xc1,0x92,0xdb,0xd4,0x92,0xcb,0xdd,0xc7,0x92,0xd4,0xdd,0xde,0xde,0xdd,0xc5,0x92,0xd7,0xd3,0xd1,0xda,0x92,0xdd,0xc6,0xda,0xd7,0xc0,0xcc]

/*: "Tip:" :*/
fileprivate let dreamEnjoyMsg:String = "pass saleTip:"

/*: "Favorite each other" :*/
fileprivate let appCivicFormat:String = "Favorisnap bit warning"
fileprivate let m_combinedIdent:String = "h othfound drawing"
fileprivate let m_statPath:[Character] = ["e","r"]

/*: " chat will be free" :*/
fileprivate let show_photographRemoveSureFormat:String = "log later auto commend chat wi"
fileprivate let notiFingerPath:[Character] = ["l","l"," ","b","e"," ","f","r","e","e"]

/*: "targetUid" :*/
fileprivate let m_hundredIdent:[Character] = ["t","a"]
fileprivate let dreamPowName:String = "rgetUidsurgery over satisfy"

/*: "type" :*/
fileprivate let noti_themeIconUrl:String = "TYPE"

/*: "attentionType" :*/
fileprivate let main_extendedIdent:[Character] = ["a","t","t","e","n","t","i","o","n","T","y","p","e"]

/*: "limit" :*/
fileprivate let notiBeginUrl:String = "lmidit"

/*: "page" :*/
fileprivate let main_eyePath:String = "PAGE"

/*: "You've got no favourite yet." :*/
fileprivate let dreamContactPath:[Character] = ["Y","o","u","\'","v","e"," "]
fileprivate let notiBranchData:String = "run split enter frame directiongot n"
fileprivate let appReplacementData:String = "fingerouri"
fileprivate let k_receiveName:String = "te yet.chip cause"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class FindViewDelegate: FlexibleViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [AsideMeasurable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(dreamKnowIdent)).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        lieInWaitProfile()
        //: reqData()
        filter()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.amplitudeModulation { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.lipUpgrade()
        }
        //: table.addFooterRefresh { [weak self] in
        table.boxComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.terminate()
        }
        //: return table
        return table
        //: }()
    }()

    let str = (String(dreamEnjoyMsg.suffix(4))) + "\"" + (String(appCivicFormat.prefix(6)) + "te eac" + String(m_combinedIdent.prefix(5)) + String(m_statPath)) + "\"" + (String(show_photographRemoveSureFormat.suffix(8)) + String(notiFingerPath))
    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .afterDisable(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.fogColor()
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: dreamAccountingFadeText.map{$0^178}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = str.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension FindViewDelegate {
    //: func reqData() {
    func filter() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = AdministratorThen.share.loginUserMode.userID
        dict[(String(m_hundredIdent) + String(dreamPowName.prefix(7)))] = AdministratorThen.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(noti_themeIconUrl.lowercased())] = "1"
        //: dict["attentionType"] = "1"
        dict[(String(main_extendedIdent))] = "1"
        //: dict["limit"] = "20"
        dict[(notiBeginUrl.replacingOccurrences(of: "mid", with: "im"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(main_eyePath.lowercased())] = String(pageIndex)

        //: TalkingChatRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        ShrinkReactiveCompatible.atation(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.speedReload()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [AsideMeasurable] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<AsideMeasurable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [AsideMeasurable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func lipUpgrade() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        filter()
    }

    //: func footerRefresh() {
    func terminate() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        filter()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension FindViewDelegate: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension FindViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingAttentionCell.className()
        let identifier = ImplementationThen.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ImplementationThen
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = ImplementationThen(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: AsideMeasurable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.sparkSlideHome(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - RaceThen

//: extension TalkingAttentionVC: AttentionDelegate {
extension FindViewDelegate: RaceThen {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func orderedSeriesMethod(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func supposed(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension FindViewDelegate {
    //: private func designView() {
    private func lieInWaitProfile() {
        //: var style = EmptyStyle()
        var style = PickEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (String(dreamContactPath) + String(notiBranchData.suffix(5)) + "o fa" + appReplacementData.replacingOccurrences(of: "finger", with: "v") + String(k_receiveName.prefix(7))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(userToEnableKeyUrl ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = AdministratorThen.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = AdministratorThen.share.appStatus != BecauseMultiplierTarget.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: TalkingAttentionCell.className())
        MainTable.register(ImplementationThen.self, forCellReuseIdentifier: ImplementationThen.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
