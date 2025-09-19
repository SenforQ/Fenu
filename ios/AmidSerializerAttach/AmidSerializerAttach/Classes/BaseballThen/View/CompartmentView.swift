
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_billId:[UInt8] = [0x3e,0x43,0x3e,0x49,0xfd,0x38,0x44,0x39,0x3a,0x47,0xf,0xfe,0xf5,0x3d,0x36,0x48,0xf5,0x43,0x44,0x49,0xf5,0x37,0x3a,0x3a,0x43,0xf5,0x3e,0x42,0x45,0x41,0x3a,0x42,0x3a,0x43,0x49,0x3a,0x39]

fileprivate func lipAdmit(evaluate num: UInt8) -> UInt8 {
    let value = Int(num) + 43
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#222222" :*/
fileprivate let k_commentText:[Character] = ["#","2","2","2","2","2","2"]

/*: "#EAE8FE" :*/
fileprivate let showMerelyData:String = "fluent icon tight might#EAE8FE"

/*: "#D0D0D0" :*/
fileprivate let showTodayMessage:String = "bury shared clothe#D0D0D"
fileprivate let mainParaStr:String = "session"

/*: "btn_me_edit_option_delete" :*/
fileprivate let show_externalValue:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_"]
fileprivate let m_nobodyId:String = "optaccesson"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class CompartmentView: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)
        self.addSubview(TagBtn)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_billId.map{lipAdmit(evaluate: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (String(k_commentText))), for: .normal)
        //: temp.setTitleColor(UIColor.appThemeColor(), for: .selected)
        temp.setTitleColor(UIColor.fogColor(), for: .selected)
        //: temp.titleLabel?.font  = .pingfangFont(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .afterDisable(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.toastrackUpwardlyState(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.toastrackUpwardlyState(color: UIColor(hex: (String(showMerelyData.suffix(7))))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(showTodayMessage.suffix(6)) + mainParaStr.replacingOccurrences(of: "session", with: "0")))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.BundleImageNamed(name: "btn_me_edit_option_delete")
        temp.image = UIImage.scribeNumber(name: (String(show_externalValue) + m_nobodyId.replacingOccurrences(of: "access", with: "i") + "_delete"))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension CompartmentView {
    //: func fill(title: String)  {
    func failure(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func uphold(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        successfullyConfirm(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func bot() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        successfullyConfirm(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func suspicion() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        successfullyConfirm(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func successfullyConfirm(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(showTodayMessage.suffix(6)) + mainParaStr.replacingOccurrences(of: "session", with: "0")))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func whoSelete() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
