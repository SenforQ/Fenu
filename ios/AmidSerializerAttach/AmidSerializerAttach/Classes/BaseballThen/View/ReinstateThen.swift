
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mMContainHemMsg:[UInt8] = [0xaa,0xad,0xaa,0xb7,0xeb,0xa0,0xac,0xa7,0xa6,0xb1,0xf9,0xea,0xe3,0xab,0xa2,0xb0,0xe3,0xad,0xac,0xb7,0xe3,0xa1,0xa6,0xa6,0xad,0xe3,0xaa,0xae,0xb3,0xaf,0xa6,0xae,0xa6,0xad,0xb7,0xa6,0xa7]

private func tagAwake(lovely num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let main_tabPath:[UInt8] = [0x74,0x8a,0x90,0x3b,0x7e,0x7c,0x89,0x3b,0x8d,0x80,0x7e,0x80,0x84,0x91,0x80,0x3b,0x7c,0x3b,0x82,0x8a,0x87,0x7f,0x3b,0x7e,0x8a,0x84,0x89,0x8e,0x3b,0x7d,0x8a,0x89,0x90,0x8e,0x3b,0x8a,0x89,0x7e,0x80,0x3b,0x7c,0x3b,0x7f,0x7c,0x94,0x3b,0x92,0x83,0x84,0x87,0x80,0x3b,0x8f,0x83,0x80,0x3b]

fileprivate func warningStyle(scribe num: UInt8) -> UInt8 {
    let value = Int(num) - 27
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Lounge plus" :*/
fileprivate let notiSecretIdent:String = "text will require just pauseLounge"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let main_midnightMpMinimumValue:[UInt8] = [0xb2,0xe1,0xe7,0xf0,0xe1,0xf1,0xe0,0xfb,0xe2,0xe6,0xfb,0xfd,0xfc,0xb2,0xe1,0xf7,0xe0,0xe4,0xfb,0xf1,0xf7,0xb2,0xfb,0xe1,0xb2,0xf3,0xf1,0xe6,0xfb,0xe4,0xf7,0xbc,0xc6,0xfa,0xf7,0xb2,0xe6,0xfb,0xff,0xf7,0xb2,0xfd,0xf4,0xb2,0xe6,0xfa,0xf7,0xb2,0xf6,0xf3,0xfb,0xfe,0xeb,0xb2,0xf5,0xfd,0xfe,0xf6,0xb2,0xf1,0xfd,0xfb,0xfc,0xe1,0xb2,0xe5,0xfb,0xfe,0xfe,0xb2,0xf0,0xf7,0xb2,0xf0,0xf3,0xe1,0xf7,0xf6,0xb2,0xfd,0xfc,0xb2,0xe6,0xfa,0xf7,0xb2,0xc7,0xc1,0xb2,0xd7,0xf3,0xe1,0xe6,0xf7,0xe0,0xfc,0xb2,0xc6,0xfb,0xff,0xf7,0xb2,0xc8,0xfd,0xfc,0xf7,0xbc]

private func careLower(strip num: UInt8) -> UInt8 {
    return num ^ 146
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReinstateThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class ReinstateThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mMContainHemMsg.map{tagAwake(lovely: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.hiddenRound()
        //: self.setupSubViewsConstraint()
        self.moreConstraint()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: noti_senseContent - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.dimensionSixth(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: main_tabPath.map{warningStyle(scribe: $0)}, encoding: .utf8)! + "\"" + (String(notiSecretIdent.suffix(6)) + " plus") + "\"" + String(bytes: main_midnightMpMinimumValue.map{careLower(strip: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.soil(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.fluent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension ReinstateThen {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func revenueFamily() -> CGFloat {
        //: if AdministratorThen.share.loginUserMode.isSignIn {
        if AdministratorThen.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension ReinstateThen {
    // 添加视图
    //: private func setupSubviews() {
    private func hiddenRound() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func moreConstraint() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
