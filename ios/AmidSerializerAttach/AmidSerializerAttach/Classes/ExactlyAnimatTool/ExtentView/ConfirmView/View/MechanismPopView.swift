
//: Declare String Begin

/*: "MechanismPopView deinit" :*/
fileprivate let main_alreadyUrl:String = "QuoteDetthrough ceremony definition"
fileprivate let notiSampleStr:String = "ailPopconversion quickly"
fileprivate let userSystemIdent:String = "einicircle"

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiQuicklyFormat:[UInt8] = [0x1f,0x18,0x1f,0x2,0x5e,0x15,0x19,0x12,0x13,0x4,0x4c,0x5f,0x56,0x1e,0x17,0x5,0x56,0x18,0x19,0x2,0x56,0x14,0x13,0x13,0x18,0x56,0x1f,0x1b,0x6,0x1a,0x13,0x1b,0x13,0x18,0x2,0x13,0x12]

private func adjustRe(partner num: UInt8) -> UInt8 {
    return num ^ 118
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MechanismPopView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class MechanismPopView: UIView {
    //: var popView: TalkingPopView?
    var popView: AsideView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(main_alreadyUrl.prefix(8)) + String(notiSampleStr.prefix(6)) + "View d" + userSystemIdent.replacingOccurrences(of: "circle", with: "t")))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.toALesserExtent()
        //: self.setupSubViewsConstraint()
        self.feedbackAcross()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiQuicklyFormat.map{adjustRe(partner: $0)}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.afterDisable(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.manualColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension MechanismPopView {
    //: func show() {
    func selsyn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = AsideView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.viewChin(view: self)
        //: popView?.showInView(view: CreditsThen.getWindow())
        popView?.validMake(view: CreditsThen.captain())
    }

    //: @objc func dismiss() {
    @objc func city() {
        //: popView?.dismissView()
        popView?.theme()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension MechanismPopView {
    // 添加视图
    //: private func setupSubviews() {
    private func toALesserExtent() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.landmarkBalance()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func feedbackAcross() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
