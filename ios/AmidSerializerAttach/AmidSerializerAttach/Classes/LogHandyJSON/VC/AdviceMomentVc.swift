
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_beforeTitle:[UInt8] = [0x1b,0x20,0x1b,0x26,0xda,0x15,0x21,0x16,0x17,0x24,0xec,0xdb,0xd2,0x1a,0x13,0x25,0xd2,0x20,0x21,0x26,0xd2,0x14,0x17,0x17,0x20,0xd2,0x1b,0x1f,0x22,0x1e,0x17,0x1f,0x17,0x20,0x26,0x17,0x16]

fileprivate func foodThen(our num: UInt8) -> UInt8 {
    let value = Int(num) - 178
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "There's no posts yet." :*/
fileprivate let app_readingScheduleUrl:String = "Thersubject hour disagree detailed"
fileprivate let mStageFormat:String = "adjustment smartno pos"
fileprivate let mainCommandFormat:String = "for comply instruction positivet."

/*: "uid" :*/
fileprivate let user_promptText:String = "uassistantd"

/*: "page" :*/
fileprivate let showShouldLiveMessage:String = "papointe"

/*: "list" :*/
fileprivate let notiStreetKingIdent:String = "lisaccess"

/*: "nickname" :*/
fileprivate let app_outerUrl:String = "npowkname"

/*: "age" :*/
fileprivate let dreamDefineMessage:String = "AGE"

/*: "sex" :*/
fileprivate let app_graySaveId:String = "ssub"

/*: "isTPAuth" :*/
fileprivate let k_chooseMessage:String = "appearance print weekly wedisTPAut"
fileprivate let main_darkId:String = "fire"

/*: "headPic" :*/
fileprivate let showQuicklyFormat:[Character] = ["h","e","a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let k_pickBrowIdent:[Character] = ["p"]
fileprivate let kCaptureTitle:[Character] = ["i","n","C","o","u","n","t"]

/*: "model" :*/
fileprivate let user_seriesKey:String = "modconnect"

/*: "Unpin from profile" :*/
fileprivate let mainSecondStr:String = "Unpinreport street skin dialog maximum"
fileprivate let noti_pressData:String = "superiorrofile"

/*: "Delete Post" :*/
fileprivate let show_beatMsg:[Character] = ["D","e","l","e","t","e"," ","P","o","s","t"]

/*: "Pin to profile" :*/
fileprivate let app_tentKey:String = "Pin to pfun board method"
fileprivate let app_putButteTitle:String = "ovalofile"

/*: "momentId" :*/
fileprivate let m_rocketTitle:String = "momentIdbounce native extent step foundation"

/*: "status" :*/
fileprivate let kGuidanceMessage:String = "stapproachtus"

/*: "Your post has been pinned" :*/
fileprivate let userRemoteUrl:String = "Youreverybody its stretch secure"
fileprivate let show_mirrorStr:String = "he productiont has "
fileprivate let app_againKey:String = "pinnrite"

/*: "Your post has been Unpinned" :*/
fileprivate let k_causeObserveFormat:String = "Your finish radio property behavior"
fileprivate let mTargetTitle:String = "gaze grant place go has b"
fileprivate let k_hundredName:String = "Unpitar commit"

/*: "Posts" :*/
fileprivate let dream_recommendMessage:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdviceMomentVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class AdviceMomentVc: FlexibleViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [LogHandyJSON] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_beforeTitle.map{foodThen(our: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        capacity()
        //: setupSubViewsConstraint()
        local()
        //: bindInteraction()
        house()
        //: reqData()
        along()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = PickEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(app_readingScheduleUrl.prefix(4)) + "e\'s " + String(mStageFormat.suffix(6)) + "ts ye" + String(mainCommandFormat.suffix(2)))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension AdviceMomentVc {
    //: func reqData() {
    func along() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(user_promptText.replacingOccurrences(of: "assistant", with: "i"))] = uid
        //: dict["page"] = pageIndex
        dict[(showShouldLiveMessage.replacingOccurrences(of: "point", with: "g"))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        LiteralReactiveCompatible.post(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.speedReload()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(notiStreetKingIdent.replacingOccurrences(of: "access", with: "t"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [LogHandyJSON] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<LogHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(app_outerUrl.replacingOccurrences(of: "pow", with: "ic"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(dreamDefineMessage.lowercased())] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(app_graySaveId.replacingOccurrences(of: "sub", with: "ex"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(user_promptText.replacingOccurrences(of: "assistant", with: "i"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(k_chooseMessage.suffix(7)) + main_darkId.replacingOccurrences(of: "fire", with: "h"))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(showQuicklyFormat))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(k_pickBrowIdent) + String(kCaptureTitle))] as! Int
                        //: model.caculateItemHeight()
                        model.hemCustomer()
                        //: if model.uid == AdministratorThen.share.loginUserMode.userID {
                        if model.uid == AdministratorThen.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension AdviceMomentVc {
    //: func headerRefresh() {
    func goOpenRefresh() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        along()
    }

    //: func footerRefresh() {
    func shouldRefresh() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        along()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func yesterdayCheck(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: LogHandyJSON = userinfo[(user_seriesKey.replacingOccurrences(of: "connect", with: "el"))] as! LogHandyJSON
        //: if model.uid == AdministratorThen.share.loginUserMode.userID {
        if model.uid == AdministratorThen.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func anniversaryReply(model: LogHandyJSON, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = ChromosomeMappingView(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.aList(cellTitleList: [(String(mainSecondStr.prefix(5)) + " from " + noti_pressData.replacingOccurrences(of: "superior", with: "p")).localized, (String(show_beatMsg)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.aList(cellTitleList: [(String(app_tentKey.prefix(8)) + app_putButteTitle.replacingOccurrences(of: "oval", with: "r")).localized, (String(show_beatMsg)).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.aList(cellTitleList: [(String(mainSecondStr.prefix(5)) + " from " + noti_pressData.replacingOccurrences(of: "superior", with: "p")).localized, (String(show_beatMsg)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.aList(cellTitleList: [(String(show_beatMsg)).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(mainSecondStr.prefix(5)) + " from " + noti_pressData.replacingOccurrences(of: "superior", with: "p")).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.see(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(app_tentKey.prefix(8)) + app_putButteTitle.replacingOccurrences(of: "oval", with: "r")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.see(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(show_beatMsg)).localized {
                //: ProgressHUD.show()
                VillageView.projectShow()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                LiteralReactiveCompatible.paramsCompletion(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    VillageView.statusDismiss()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func see(isTop: Int, model: LogHandyJSON) {
        //: ProgressHUD.show()
        VillageView.projectShow()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(m_rocketTitle.prefix(8)))] = model.mid
        //: dict["status"] = isTop
        dict[(kGuidanceMessage.replacingOccurrences(of: "approach", with: "a"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        LiteralReactiveCompatible.app(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = self.getStr(isTop: isTop)
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.bringHomePublishGap(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
            }
        }
    }
    
    func getStr(isTop: Int) -> String {
        return isTop == 1 ? (String(userRemoteUrl.prefix(4)) + " pos" + String(show_mirrorStr.suffix(6)) + "been " + app_againKey.replacingOccurrences(of: "rite", with: "ed")).localized : (String(k_causeObserveFormat.prefix(5)) + "post" + String(mTargetTitle.suffix(6)) + "een " + String(k_hundredName.prefix(4)) + "nned").localized
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension AdviceMomentVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = CompartmentThen(style: .default, reuseIdentifier: CompartmentThen.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: LogHandyJSON = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.cover(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.anniversaryReply(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = DetailFlushViewDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension AdviceMomentVc {
    // 添加视图
    //: private func setupSubviews() {
    private func capacity() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.landmarkBalance()
        //: self.title = "Posts".localized
        self.title = (String(dream_recommendMessage)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(CompartmentThen.self, forCellReuseIdentifier: CompartmentThen.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func local() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func house() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.amplitudeModulation { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.goOpenRefresh()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.boxComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.shouldRefresh()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(yesterdayCheck(notification:)), name: mBlockKey, object: nil)
    }
}
