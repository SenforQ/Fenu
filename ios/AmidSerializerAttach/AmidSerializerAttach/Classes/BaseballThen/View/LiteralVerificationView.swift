
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_markForeMessage:[UInt8] = [0xc5,0xc2,0xc5,0xd8,0x84,0xcf,0xc3,0xc8,0xc9,0xde,0x96,0x85,0x8c,0xc4,0xcd,0xdf,0x8c,0xc2,0xc3,0xd8,0x8c,0xce,0xc9,0xc9,0xc2,0x8c,0xc5,0xc1,0xdc,0xc0,0xc9,0xc1,0xc9,0xc2,0xd8,0xc9,0xc8]

private func saveMentally(butte num: UInt8) -> UInt8 {
    return num ^ 172
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let noti_shakeMsg:String = "icon_strip please if"
fileprivate let mIncludeAdjustUrl:String = "rsocietyfsocietyca"
fileprivate let appAspectFairFormat:String = "wage sometimeuide_o"
fileprivate let k_itsName:[Character] = ["k"]

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let userPadMsg:[UInt8] = [0xc3,0xe5,0xf2,0xfd,0xf9,0xe4,0xe4,0xf5,0xf4,0xb0,0xe3,0xe5,0xf3,0xf3,0xf5,0xe3,0xe3,0xf6,0xe5,0xfc,0xfc,0xe9,0xbc,0xb0,0xe0,0xfc,0xf5,0xf1,0xe3,0xf5,0xb0,0xe7,0xf1,0xf9,0xe4,0xb0,0x9a,0xb0,0xe0,0xf1,0xe4,0xf9,0xf5,0xfe,0xe4,0xfc,0xe9,0xb0,0xf6,0xff,0xe2,0xb0,0xe2,0xf5,0xe6,0xf9,0xf5,0xe7,0xbe]

private func leastParaStrength(lease num: UInt8) -> UInt8 {
    return num ^ 144
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LiteralVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class LiteralVerificationView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        filing()
        //: layoutSubViewsConstraints()
        prevalenceThroughStage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_markForeMessage.map{saveMentally(butte: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.scribeNumber(name: (String(noti_shakeMsg.prefix(5)) + "faceve" + mIncludeAdjustUrl.replacingOccurrences(of: "society", with: "i") + "tion_g" + String(appAspectFairFormat.suffix(6)) + String(k_itsName)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: userPadMsg.map{leastParaStrength(lease: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .manualColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .afterDisable(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension LiteralVerificationView {
    //: func createSubViews() {
    func filing() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func prevalenceThroughStage() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
