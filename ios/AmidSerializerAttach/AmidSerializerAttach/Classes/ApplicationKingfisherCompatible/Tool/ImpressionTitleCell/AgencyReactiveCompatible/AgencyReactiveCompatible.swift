
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showDominantViewCaseKey:[UInt8] = [0x57,0x50,0x57,0x4a,0x16,0x5d,0x51,0x5a,0x5b,0x4c,0x4,0x17,0x1e,0x56,0x5f,0x4d,0x1e,0x50,0x51,0x4a,0x1e,0x5c,0x5b,0x5b,0x50,0x1e,0x57,0x53,0x4e,0x52,0x5b,0x53,0x5b,0x50,0x4a,0x5b,0x5a]

private func typicalSpecNigh(party num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "icon_cz_nor" :*/
fileprivate let noti_baseballName:[Character] = ["i","c","o","n","_","c","z","_","n"]
fileprivate let showCustodyName:String = "ogiven"

/*: "Face" :*/
fileprivate let m_belowName:String = "train this and ping initialFace"

/*: "Eyes" :*/
fileprivate let appOperationMsg:[Character] = ["E","y","e","s"]

/*: "Nose" :*/
fileprivate let main_attitudeFormat:String = "selected new star perspectiveNose"

/*: "Lip" :*/
fileprivate let kFogStr:[Character] = ["L","i","p"]

/*: "Filter" :*/
fileprivate let appSoundKey:String = "visible harassment prove endFilter"

/*: "#C3BDB9" :*/
fileprivate let k_exhaustIdent:[Character] = ["#","C","3","B","D"]
fileprivate let mainExistShakeSweetTitle:String = "express"

/*: "Restore to default Beautify Settings" :*/
fileprivate let m_packYellowName:[UInt8] = [0x4b,0x7c,0x6a,0x6d,0x76,0x6b,0x7c,0x39,0x6d,0x76,0x39,0x7d,0x7c,0x7f,0x78,0x6c,0x75,0x6d,0x39,0x5b,0x7c,0x78,0x6c,0x6d,0x70,0x7f,0x60,0x39,0x4a,0x7c,0x6d,0x6d,0x70,0x77,0x7e,0x6a]

private func vinePea(tone num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "Cancel" :*/
fileprivate let user_circlePath:String = "Cancelenhance lifestyle"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AgencyReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: @objc public enum BeautyItemType: Int {
@objc public enum BeautyValueConvertible: Int {
    //: case Face = 100
    case Face = 100 /// 脸部
    //: case Eyes = 101
    case Eyes = 101 /// 眼部
    //: case Nose = 102
    case Nose = 102 /// 鼻部
    //: case Lip = 103
    case Lip = 103 /// 嘴部

    //: case Filter = 104
    case Filter = 104 /// 滤镜
}

//: @objc protocol STBeautyTopItemViewDelegate: NSObjectProtocol {
@objc protocol TaViewDelegate: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(senderTag: Int)
    @objc func inmateRemote(senderTag: Int)
    //: @objc func ResetBeauty()
    @objc func rut()
}

//: class STBeautyTopItemView: UIView {
class AgencyReactiveCompatible: UIView {
    //: var selectButton = UIButton.init()
    var selectButton = UIButton()

    //: var delegate: STBeautyTopItemViewDelegate?
    var delegate: TaViewDelegate?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showDominantViewCaseKey.map{typicalSpecNigh(party: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        fullLap()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_cz_nor"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (String(noti_baseballName) + showCustodyName.replacingOccurrences(of: "given", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(resetBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(zoneSound), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension STBeautyTopItemView {
extension AgencyReactiveCompatible {
    //: func setupSubviews() {
    func fullLap() {
        //: self.addSubview(sliderView)
        self.addSubview(sliderView)
        //: sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: let items = ["Face", "Eyes", "Nose", "Lip", "Filter"]
        let items = [(String(m_belowName.suffix(4))), (String(appOperationMsg)), (String(main_attitudeFormat.suffix(4))), (String(kFogStr)), (String(appSoundKey.suffix(6)))]
        //: var tag = BeautyItemType.Face.rawValue
        var tag = BeautyValueConvertible.Face.rawValue
        //: let buttonW = 56
        let buttonW = 56
        //: var buttonX = 6
        var buttonX = 6
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item.localized, type: tag)
            let itemButton = lessen(item: item.localized, type: tag)
            //: self.addSubview(itemButton)
            self.addSubview(itemButton)
            //: itemButton.snp.makeConstraints { make in
            itemButton.snp.makeConstraints { make in
                //: make.leading.equalTo(buttonX)
                make.leading.equalTo(buttonX)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.equalTo(buttonW)
                make.width.equalTo(buttonW)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: itemButton.layoutIfNeeded()
            itemButton.layoutIfNeeded()
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: buttonItemChange(sender: itemButton)
                incidental(sender: itemButton)
                //: let startX = LanguageManager.shared.direction == .rightToLeft ? (Int(ScreenWidth)-6-buttonW/2):6+buttonW/2
                let startX = PrintingReactiveCompatible.shared.direction == .rightToLeft ? (Int(noti_senseContent) - 6 - buttonW / 2) : 6 + buttonW / 2
                //: sliderView.center = CGPoint(x: startX, y: 40)
                sliderView.center = CGPoint(x: startX, y: 40)
            }
        }

        //: self.addSubview(resetBtn)
        self.addSubview(resetBtn)
        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-10-30)
            make.leading.equalTo(noti_senseContent - 10 - 30)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
    }

    //: func creatButton(item: String, type: Int) -> UIButton {
    func lessen(item: String, type: Int) -> UIButton {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#C3BDB9"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(k_exhaustIdent) + mainExistShakeSweetTitle.replacingOccurrences(of: "express", with: "B9"))), for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .selected)
        btn.setTitleColor(UIColor.white, for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(incidental(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: @objc func buttonItemChange(sender: UIButton) {
    @objc func incidental(sender: UIButton) {
        //: setButtonStatus(sender: sender)
        trench(sender: sender)
        //: self.delegate?.changeTopItem(senderTag: sender.tag)
        self.delegate?.inmateRemote(senderTag: sender.tag)
    }

    //: func setButtonStatus(sender: UIButton) {
    func trench(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: self.selectButton.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 14)
        self.selectButton.titleLabel?.font = UIFont.afterDisable(type: .Semibold, fontSize: 14)
        //: self.selectButton.isSelected = false
        self.selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: self.selectButton = sender
        self.selectButton = sender
        //: if (self.sliderView.superview != nil) {
        if self.sliderView.superview != nil {
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
                self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
            }
        }
    }

    //: @objc func resetBtnClick() {
    @objc func zoneSound() {
        //: let config = ShowAlertConfig()
        let config = GainGageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.afterDisable(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Restore to default Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        GentleAlertShow.begNativeConfig(message: String(bytes: m_packYellowName.map{vinePea(tone: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(user_circlePath.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            GentleAlertShow.someButton()
            //: let btn: UIButton =  self.viewWithTag(BeautyItemType.Face.rawValue) as! UIButton
            let btn: UIButton = self.viewWithTag(BeautyValueConvertible.Face.rawValue) as! UIButton
            //: self.buttonItemChange(sender: btn)
            self.incidental(sender: btn)
            //: self.delegate?.ResetBeauty()
            self.delegate?.rut()
            //: }, config: config)
        }, config: config)
    }
}
