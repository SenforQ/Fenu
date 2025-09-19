
//: Declare String Begin

/*: "AboutUs" :*/
fileprivate let dream_decisionKey:String = "talk boundary head provoke followingAboutU"
fileprivate let app_wireNorMagnitudeerestedKey:String = "city"

/*: "sl_about" :*/
fileprivate let dream_boyShallValue:String = "assistant"
fileprivate let mQuietKey:String = "another origin boss thick sourcel_about"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JawUsVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingAboutUsVC: TalkingBaseViewController {
class JawUsVc: FlexibleViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "AboutUs".localized
        self.title = (String(dream_decisionKey.suffix(6)) + app_wireNorMagnitudeerestedKey.replacingOccurrences(of: "city", with: "s")).localized
        //: designView()
        ignore()
    }

    // MARK: - Lazy load

    //: lazy var iconBImag: UIImageView = {
    lazy var iconBImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "sl_about")
        imag.image = UIImage.scribeNumber(name: (dream_boyShallValue.replacingOccurrences(of: "assistant", with: "s") + String(mQuietKey.suffix(7))))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.RGBA(157, 157, 157, 1)
        lb.textColor = UIColor.fruitThumb(157, 157, 157, 1)
        //: lb.text = "V"+AppVersion
        lb.text = "V" + userAssetManagerPath
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingAboutUsVC {
extension JawUsVc {
    //: private func designView() {
    private func ignore() {
        //: self.view.addSubview(iconBImag)
        self.view.addSubview(iconBImag)
        //: self.view.addSubview(titleBLB)
        self.view.addSubview(titleBLB)

        //: iconBImag.snp.makeConstraints { make in
        iconBImag.snp.makeConstraints { make in
            //: make.top.equalTo(self.view.snp.top).offset(96)
            make.top.equalTo(self.view.snp.top).offset(96)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconBImag.snp.bottom).offset(16)
            make.top.equalTo(iconBImag.snp.bottom).offset(16)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
    }
}
