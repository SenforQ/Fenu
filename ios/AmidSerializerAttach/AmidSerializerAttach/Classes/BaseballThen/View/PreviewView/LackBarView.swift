
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kEyeSessionUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "nav_back_black_nor" :*/
fileprivate let m_birthText:String = "nav_bperson wife first ex"
fileprivate let appPostId:String = "succeed projectblack_n"
fileprivate let mProfessionalTitle:String = "osituation"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LackBarView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class LackBarView: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.destroy()
        //: self.setupSubViewsConstraint()
        self.complete()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kEyeSessionUrl.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(m_birthText.prefix(5)) + "ack_" + String(appPostId.suffix(7)) + mProfessionalTitle.replacingOccurrences(of: "situation", with: "r")))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(miniRegister), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension LackBarView {
    //: @objc func registerBackAction() {
    @objc func miniRegister() {
        //: DumpPushManager.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        DumpPushManager.share.talkVc()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func stepStrong() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func feedback() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension LackBarView {
    //: private func setupSubviews() {
    private func destroy() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func complete() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(mNameKey)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: kLocationMessage))
        }
    }
}
