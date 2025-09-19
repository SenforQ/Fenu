
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dreamExtentName:[UInt8] = [0x54,0x53,0x54,0x49,0x15,0x5e,0x52,0x59,0x58,0x4f,0x7,0x14,0x1d,0x55,0x5c,0x4e,0x1d,0x53,0x52,0x49,0x1d,0x5f,0x58,0x58,0x53,0x1d,0x54,0x50,0x4d,0x51,0x58,0x50,0x58,0x53,0x49,0x58,0x59]

private func analyzeEstablish(rid num: UInt8) -> UInt8 {
    return num ^ 61
}

/*: "pic" :*/
fileprivate let app_coreName:String = "picomment"

/*: "url" :*/
fileprivate let dream_photoPath:String = "depthl"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OperationThen.swift
//  AmidSerializerAttach
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class OperationThen: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, noti_senseContent, OperationThen.instanceHeight())
        //: basicUI()
        ratingToUi()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dreamExtentName.map{analyzeEstablish(rid: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = AdministratorThen.share.appConfigMode.homeOpAds.first
        let dic = AdministratorThen.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.arm(urlStr: dic?[(app_coreName.replacingOccurrences(of: "comment", with: "c"))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(behindGlobal), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = AdministratorThen.share.appConfigMode.homeOpAds.last
        let dic = AdministratorThen.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.arm(urlStr: dic?[(app_coreName.replacingOccurrences(of: "comment", with: "c"))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(centerAwake), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension OperationThen {
    //: @objc private func hostBtnClick() {
    @objc private func behindGlobal() {
        //: let dic = AdministratorThen.share.appConfigMode.homeOpAds.first
        let dic = AdministratorThen.share.appConfigMode.homeOpAds.first
        //: DumpPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        DumpPushManager.share.noneControlInstall(urlStr: dic?[(dream_photoPath.replacingOccurrences(of: "depth", with: "ur"))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func centerAwake() {
        //: let dic = AdministratorThen.share.appConfigMode.homeOpAds.last
        let dic = AdministratorThen.share.appConfigMode.homeOpAds.last
        //: DumpPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        DumpPushManager.share.noneControlInstall(urlStr: dic?[(dream_photoPath.replacingOccurrences(of: "depth", with: "ur"))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension OperationThen {
    //: class func getSelfHeight() -> CGFloat {
    class func instanceHeight() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue && AdministratorThen.share.appConfigMode.homeOpAds.count > 1 {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue && AdministratorThen.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func ratingToUi() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if AdministratorThen.share.loginUserMode.sex == Gender.female.rawValue, AdministratorThen.share.appConfigMode.homeOpAds.count > 0 {
        if AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.female.rawValue, AdministratorThen.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
