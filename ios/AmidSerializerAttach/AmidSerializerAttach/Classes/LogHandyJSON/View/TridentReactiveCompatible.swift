
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiMobileRetiredIdent:[UInt8] = [0x35,0x3a,0x35,0x40,0xf4,0x2f,0x3b,0x30,0x31,0x3e,0x6,0xf5,0xec,0x34,0x2d,0x3f,0xec,0x3a,0x3b,0x40,0xec,0x2e,0x31,0x31,0x3a,0xec,0x35,0x39,0x3c,0x38,0x31,0x39,0x31,0x3a,0x40,0x31,0x30]

fileprivate func viableSpread(what num: UInt8) -> UInt8 {
    let value = Int(num) - 204
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
//  TridentReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingCircleProgressView: UIView {
class TridentReactiveCompatible: UIView {
    //: var strokeWidth: CGFloat = 0.0
    var strokeWidth: CGFloat = 0.0
    //: var strokeColor: UIColor?
    var strokeColor: UIColor?
    //: var circleBgColor: UIColor?
    var circleBgColor: UIColor?
    //: private var percent: CGFloat = 0.0
    private var percent: CGFloat = 0.0

    //: deinit {
    deinit {}

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiMobileRetiredIdent.map{viableSpread(what: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        //: super.draw(rect)
        super.draw(rect)
        //: if circleBgColor != nil {
        if circleBgColor != nil {
            //: let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            //: let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            //: roundPath.lineWidth = strokeWidth
            roundPath.lineWidth = strokeWidth
            //: circleBgColor?.set()
            circleBgColor?.set()
            //: roundPath.stroke()
            roundPath.stroke()
        }

        //: let path = UIBezierPath()
        let path = UIBezierPath()
        //: let startAngle = (-0.5 * .pi)
        let startAngle = (-0.5 * .pi)
        //: let endAngle = startAngle + percent * 2 * .pi
        let endAngle = startAngle + percent * 2 * .pi
        //: path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
        path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
                    //: radius: (rect.size.width - strokeWidth) * 0.5,
                    radius: (rect.size.width - strokeWidth) * 0.5,
                    //: startAngle: startAngle,
                    startAngle: startAngle,
                    //: endAngle: endAngle,
                    endAngle: endAngle,
                    //: clockwise: true)
                    clockwise: true)
        //: path.lineWidth = strokeWidth
        path.lineWidth = strokeWidth
        //: strokeColor?.set()
        strokeColor?.set()
        //: path.stroke()
        path.stroke()
    }
}

// MARK: - Event

//: extension TalkingCircleProgressView {
extension TridentReactiveCompatible {
    /// 更新进度
    /// - Parameter percent: 进度
    //: func updatePercent(percent: CGFloat) {
    func ok(percent: CGFloat) {
        //: self.percent = percent
        self.percent = percent
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    }
}
