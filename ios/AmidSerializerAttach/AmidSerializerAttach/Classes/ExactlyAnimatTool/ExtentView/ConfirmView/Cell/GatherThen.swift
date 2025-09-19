
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_scribeId:[UInt8] = [0x82,0x87,0x82,0x8d,0x41,0x7c,0x88,0x7d,0x7e,0x8b,0x53,0x42,0x39,0x81,0x7a,0x8c,0x39,0x87,0x88,0x8d,0x39,0x7b,0x7e,0x7e,0x87,0x39,0x82,0x86,0x89,0x85,0x7e,0x86,0x7e,0x87,0x8d,0x7e,0x7d]

fileprivate func readyBeautiful(hide num: UInt8) -> UInt8 {
    let value = Int(num) - 25
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "move" :*/
fileprivate let showApplyMessage:[Character] = ["m","o","v","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GatherThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/3/14.
//

//: import pop
import pop
//: import UIKit
import UIKit

/// 游戏中奖飘屏
//: class TalkingGameFloatingScreenView: UIView {
class GatherThen: UIView {
    //: var needStopAll = false
    var needStopAll = false // 退出时需要停止全部弹幕
    //: var isFirstChannelEmpty = true
    var isFirstChannelEmpty = true
    //: var firstChannelEmptyBlock: (() -> Void)?
    var firstChannelEmptyBlock: (() -> Void)?
    //: var endPlayBlock: (() -> Void)?
    var endPlayBlock: (() -> Void)?
    //: var danumuMsgArray: [TalkingGameFloatingScreenModel] = []
    var danumuMsgArray: [AdviceFloatingScreenModel] = []
    //: var danumuItemViewArray: [TalkingGameFloatingScreenItemView] = []
    var danumuItemViewArray: [WarnItemView] = []

    //: let TapAction: PublishSubject<TalkingGameFloatingScreenModel?> = PublishSubject()
    let TapAction: PublishSubject<AdviceFloatingScreenModel?> = PublishSubject()

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        re()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_scribeId.map{readyBeautiful(hide: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: removeGestureRecognizer(tapGesture)
        removeGestureRecognizer(tapGesture)
    }

    //: func didReceive(_ danumuMsgModel: TalkingGameFloatingScreenModel?) {
    func naturalize(_ danumuMsgModel: AdviceFloatingScreenModel?) {
        //: if superview == nil || danumuMsgModel == nil { return }
        if superview == nil || danumuMsgModel == nil { return }

        //: if danumuMsgArray.count > 0 {
        if danumuMsgArray.count > 0 {
            //: if let danumuMsgModel {
            if let danumuMsgModel {
                //: objc_sync_enter(self)
                objc_sync_enter(self)
                //: danumuMsgArray.append(danumuMsgModel)
                danumuMsgArray.append(danumuMsgModel)
                //: objc_sync_exit(self)
                objc_sync_exit(self)
            }
            //: } else {
        } else {
            //: if let danumuMsgModel {
            if let danumuMsgModel {
                //: objc_sync_enter(self)
                objc_sync_enter(self)
                //: danumuMsgArray.append(danumuMsgModel)
                danumuMsgArray.append(danumuMsgModel)
                //: objc_sync_exit(self)
                objc_sync_exit(self)
            }

            //: if isFirstChannelEmpty {
            if isFirstChannelEmpty {
                //: firstChannelEmptyBlock?()
                firstChannelEmptyBlock?()
            }
        }
    }

    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func featureSort(_: UITapGestureRecognizer) {}

    // MARK: - 懒加载初始化

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(featureSort(_:)))
        //: t.delegate = self
        t.delegate = self
        //: return t
        return t
        //: }()
    }()
}

//: extension TalkingGameFloatingScreenView: UIGestureRecognizerDelegate {
extension GatherThen: UIGestureRecognizerDelegate {
    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //: if gestureRecognizer == tapGesture {
        if gestureRecognizer == tapGesture {
            //: let touchPoint = touch.location(in: self)
            let touchPoint = touch.location(in: self)
            //: var hasTouchItem = false
            var hasTouchItem = false

            //: for obj in danumuItemViewArray {
            for obj in danumuItemViewArray {
                //: if ((obj.layer.presentation()?.hitTest(touchPoint)) != nil) {
                if (obj.layer.presentation()?.hitTest(touchPoint)) != nil {
                    //: TapAction.onNext(obj.danumuMsgModel)
                    TapAction.onNext(obj.danumuMsgModel)
                    //: hasTouchItem = true
                    hasTouchItem = true
                    //: break
                    break
                }
            }

            //: return hasTouchItem
            return hasTouchItem
        }

        //: return true
        return true
    }

    //: func buildItemView(for danumuMsgModel: TalkingGameFloatingScreenModel?, isFirst: Bool) {
    func paradigm(for danumuMsgModel: AdviceFloatingScreenModel?, isFirst: Bool) {
        //: let itemView = TalkingGameFloatingScreenItemView(model: danumuMsgModel)
        let itemView = WarnItemView(model: danumuMsgModel)
        //: itemView.clickBlock = {[unowned self] in
        itemView.clickBlock = { [unowned self] in
            //: TapAction.onNext(danumuMsgModel)
            TapAction.onNext(danumuMsgModel)
        }

        //: var frame = CGRect(x: ScreenWidth, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
        var frame = CGRect(x: noti_senseContent, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
        //: var endFrame = frame
        var endFrame = frame
        //: endFrame.origin.x = 0 - itemView.widthValue
        endFrame.origin.x = 0 - itemView.widthValue
        //: itemView.frame = frame
        itemView.frame = frame
        //: if LanguageManager.shared.direction == .rightToLeft {
        if PrintingReactiveCompatible.shared.direction == .rightToLeft {
            //: frame = CGRect(x: 0 - itemView.widthValue, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
            frame = CGRect(x: 0 - itemView.widthValue, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
            //: endFrame = frame
            endFrame = frame
            //: endFrame.origin.x = ScreenWidth
            endFrame.origin.x = noti_senseContent
        }
        //: addSubview(itemView)
        addSubview(itemView)

        //: if let anim = POPBasicAnimation(propertyNamed: kPOPViewFrame) {
        if let anim = POPBasicAnimation(propertyNamed: kPOPViewFrame) {
            //: anim.timingFunction = CAMediaTimingFunction(name: .linear)
            anim.timingFunction = CAMediaTimingFunction(name: .linear)
            //: anim.fromValue = NSValue(cgRect: frame)
            anim.fromValue = NSValue(cgRect: frame)
            //: anim.toValue = NSValue(cgRect: endFrame)
            anim.toValue = NSValue(cgRect: endFrame)
            //: anim.duration = itemView.totalTime
            anim.duration = itemView.totalTime
            //: itemView.pop_add(anim, forKey: "move")
            itemView.pop_add(anim, forKey: (String(showApplyMessage)))

            //: anim.completionBlock = { anim, finished in
            anim.completionBlock = { _, _ in
                //: itemView.isHidden = true
                itemView.isHidden = true
                //: itemView.removeFromSuperview()
                itemView.removeFromSuperview()
                //: if let index = self.danumuItemViewArray.firstIndex(of: itemView) {
                if let index = self.danumuItemViewArray.firstIndex(of: itemView) {
                    //: self.danumuItemViewArray.remove(at: index)
                    self.danumuItemViewArray.remove(at: index)
                }
            }
            //: if isFirst {
            if isFirst {
                //: isFirstChannelEmpty = false
                isFirstChannelEmpty = false
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + itemView.totalTime/2, execute: { [unowned self] in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + itemView.totalTime / 2) { [unowned self] in
                //: if isFirst {
                if isFirst {
                    //: isFirstChannelEmpty = true
                    isFirstChannelEmpty = true
                }
                //: popDaumuMsgModeltoChannel(isFirst)
                shrinkLip(isFirst)
                //: })
            }
            //: danumuItemViewArray.append(itemView)
            danumuItemViewArray.append(itemView)
        }
    }

//    func endAnimation() {
//        needStopAll = true
//        for obj in danumuItemViewArray {
//            obj.func__endAnimation()
//            obj.layer.removeAllAnimations()
//            obj.removeFromSuperview()
//        }
//
//        layer.removeAllAnimations()
//        danumuItemViewArray = []
//    }

    //: func popDaumuMsgModeltoChannel(_ isFirst: Bool) {
    func shrinkLip(_ isFirst: Bool) {
        //: if needStopAll { return }
        if needStopAll { return }

        //: objc_sync_enter(self)
        objc_sync_enter(self)
        //: if danumuMsgArray.count > 0 {
        if danumuMsgArray.count > 0 {
            //: let model = danumuMsgArray.first
            let model = danumuMsgArray.first
            //: if let model {
            if let model {
                //: buildItemView(for: model, isFirst: isFirst)
                paradigm(for: model, isFirst: isFirst)
                //: danumuMsgArray.removeFirst()
                danumuMsgArray.removeFirst()
            }
            //: } else {
        } else {
            //: endPlayBlock?()
            endPlayBlock?()
        }
        //: objc_sync_exit(self)
        objc_sync_exit(self)
    }
}

// MARK: - Layout

//: extension TalkingGameFloatingScreenView {
extension GatherThen {
    // 添加视图
    //: private func setupSubviews() {
    private func re() {
        //: addGestureRecognizer(tapGesture)
        addGestureRecognizer(tapGesture)

        //: firstChannelEmptyBlock = {[unowned self] in
        firstChannelEmptyBlock = { [unowned self] in
            //: popDaumuMsgModeltoChannel(true)
            shrinkLip(true)
        }
    }
}
