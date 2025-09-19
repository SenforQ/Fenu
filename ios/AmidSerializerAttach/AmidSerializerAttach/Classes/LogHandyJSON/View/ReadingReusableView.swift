
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_packMessage:[UInt8] = [0x5f,0x64,0x5f,0x6a,0x1e,0x59,0x65,0x5a,0x5b,0x68,0x30,0x1f,0x16,0x5e,0x57,0x69,0x16,0x64,0x65,0x6a,0x16,0x58,0x5b,0x5b,0x64,0x16,0x5f,0x63,0x66,0x62,0x5b,0x63,0x5b,0x64,0x6a,0x5b,0x5a]

fileprivate func factorAwake(quote num: UInt8) -> UInt8 {
    let value = Int(num) + 10
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F0F0F0" :*/
fileprivate let user_minimalDialogValue:String = "#"
fileprivate let show_medalKey:[Character] = ["F","0","F","0","F","0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let dream_piName:[Character] = ["i","c","o","n","_","f","b","m","o","m","e","n","t","s","_"]
fileprivate let m_markIdent:[Character] = ["n","o","t","i","c","e"]

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let app_exclusiveData:[UInt8] = [0xc2,0xed,0xec,0x60,0xfe,0x17,0xf2,0x9e,0xee,0xed,0xf1,0xf2,0x9e,0xe1,0xed,0xec,0xf2,0xe3,0xec,0xf2,0x9e,0xf2,0xe6,0xdf,0xf2,0x9e,0xe7,0xec,0xe2,0xf3,0xe1,0xe3,0xf1,0x9e,0xed,0xf2,0xe6,0xe3,0xf0,0xf1,0x9e,0xf2,0xed,0x9e,0xf1,0xe3,0xec,0xe2,0x9e,0xe5,0xe7,0xe4,0xf2,0xf1,0x9e,0xed,0xf0,0x9e,0xed,0xf2,0xe6,0xe3,0xf0,0x9e,0xeb,0xed,0xec,0xe3,0xf7,0xab,0xf0,0xe3,0xea,0xdf,0xf2,0xe3,0xe2,0x9e,0xe1,0xe7,0xec,0xf2,0xe3,0xec,0xf2,0xac]

fileprivate func ditContent(concerned num: UInt8) -> UInt8 {
    let value = Int(num) - 126
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadingReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class ReadingReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_packMessage.map{factorAwake(quote: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        glass()
        //: setupSubViewsConstraint()
        molassesCookie()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (user_minimalDialogValue.capitalized + String(show_medalKey)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.scribeNumber(name: (String(dream_piName) + String(m_markIdent))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: app_exclusiveData.map{ditContent(concerned: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.afterDisable(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.portion()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension ReadingReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func glass() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func molassesCookie() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if BubbleVisitorReactiveCompatible.share.interfaceLang == StatusExpressionConvertible.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                BubbleVisitorReactiveCompatible.share.interfaceLang == StatusExpressionConvertible.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: noti_senseContent - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: noti_senseContent - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
