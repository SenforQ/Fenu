
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mMagnitudeervalIdent:[UInt8] = [0x6e,0x69,0x6e,0x73,0x2f,0x64,0x68,0x63,0x62,0x75,0x3d,0x2e,0x27,0x6f,0x66,0x74,0x27,0x69,0x68,0x73,0x27,0x65,0x62,0x62,0x69,0x27,0x6e,0x6a,0x77,0x6b,0x62,0x6a,0x62,0x69,0x73,0x62,0x63]

private func accountingFour(rid num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "icon_me_wallet" :*/
fileprivate let show_selectedGivenUrl:String = "ICON"
fileprivate let dreamMineText:[Character] = ["w","a","l","l","e","t"]

/*: "icon_me_dgc" :*/
fileprivate let app_paperFormat:[Character] = ["i","c","o","n","_","m"]
fileprivate let app_traceValue:[Character] = ["e","_","d","g","c"]

/*: "icon_me_friends" :*/
fileprivate let main_whichToleranceStr:String = "icon_have become psychological pressure via"
fileprivate let show_exampleStr:String = "ME"
fileprivate let notiGoldenIdent:[Character] = ["_","f","r","i","e","n","d","s"]

/*: "xicon_me_posts" :*/
fileprivate let mPremiumValue:String = "xictime"
fileprivate let mainAccelerateName:[Character] = ["o","s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let m_himId:String = "icon_mhuge wed faint"
fileprivate let notiPenCoordinatorValue:[Character] = ["e","_","S","e","r","v","i","c","e"]

/*: "icon_me_game" :*/
fileprivate let mDesignFormat:String = "root ignore communication connect willicon_"
fileprivate let dream_guiltyContent:String = "me_gamewill local national disagree"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EditionThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class EditionThen: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(LogColumnConvertible, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        fingerContain()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mMagnitudeervalIdent.map{accountingFour(rid: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(WaitReusableView.self, forCellWithReuseIdentifier: WaitReusableView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension EditionThen {
    //: func setViewData() {
    func nearNote() {
        //: if AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue { // 默认模式
            //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue {
            if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (show_selectedGivenUrl.lowercased() + "_me_" + String(dreamMineText))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(app_paperFormat) + String(app_traceValue))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(main_whichToleranceStr.prefix(5)) + show_exampleStr.lowercased() + String(notiGoldenIdent))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (mPremiumValue.replacingOccurrences(of: "time", with: "on") + "_me_p" + String(mainAccelerateName))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(m_himId.prefix(6)) + String(notiPenCoordinatorValue)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(app_paperFormat) + String(app_traceValue))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(main_whichToleranceStr.prefix(5)) + show_exampleStr.lowercased() + String(notiGoldenIdent))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (mPremiumValue.replacingOccurrences(of: "time", with: "on") + "_me_p" + String(mainAccelerateName))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(m_himId.prefix(6)) + String(notiPenCoordinatorValue)))]
            }
            // 游戏入口
            //: if AdministratorThen.share.appUserConfigMode.gameShowBit == 1 ||
            if AdministratorThen.share.appUserConfigMode.gameShowBit == 1 ||
                //: AdministratorThen.share.appUserConfigMode.gameShowBit == 3 {
                AdministratorThen.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(mDesignFormat.suffix(5)) + String(dream_guiltyContent.prefix(7)))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(app_paperFormat) + String(app_traceValue))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (mPremiumValue.replacingOccurrences(of: "time", with: "on") + "_me_p" + String(mainAccelerateName))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(m_himId.prefix(6)) + String(notiPenCoordinatorValue)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        rutAgreeConstraint()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension EditionThen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WaitReusableView.className(), for: indexPath) as! WaitReusableView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.shRead(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            DumpPushManager.share.anvil(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: DumpPushManager.share.func__pushToSubscribePageWebVC()
            DumpPushManager.share.annualReward()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            DumpPushManager.share.anvil(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: AdministratorThen.share.loginUserMode.userID)
            let vc = AdviceMomentVc(uid: AdministratorThen.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.springEquinox()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: DumpPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            DumpPushManager.share.anvil(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = CompensationDataSource()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.springEquinox()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (noti_senseContent - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension EditionThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func fingerContain() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func rutAgreeConstraint() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - WaitReusableView

//: class TalkingMeItemCell: UICollectionViewCell {
class WaitReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mMagnitudeervalIdent.map{accountingFour(rid: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func shRead(_ data: (LogColumnConvertible, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.BundleImageNamed(name: data.1)
        icon.image = UIImage.scribeNumber(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.manualColor()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .afterDisable(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
