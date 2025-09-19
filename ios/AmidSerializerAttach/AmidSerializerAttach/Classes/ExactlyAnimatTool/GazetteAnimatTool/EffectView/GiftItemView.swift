
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userSomethingKey:[UInt8] = [0x22,0x25,0x22,0x3f,0x63,0x28,0x24,0x2f,0x2e,0x39,0x71,0x62,0x6b,0x23,0x2a,0x38,0x6b,0x25,0x24,0x3f,0x6b,0x29,0x2e,0x2e,0x25,0x6b,0x22,0x26,0x3b,0x27,0x2e,0x26,0x2e,0x25,0x3f,0x2e,0x2f]

private func determineInmate(over num: UInt8) -> UInt8 {
    return num ^ 75
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol ReloadReactiveCompatible: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func immobilise(effectItemView: GiftItemView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func slowDescription(effectItemView: GiftItemView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class GiftItemView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: FindBaseballModelHandyJSON?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: GatherHandyJSON?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: ReloadReactiveCompatible?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userSomethingKey.map{determineInmate(over: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func beyondArc() {}

    //: func stopAnimating() {
    func formatAnimating() {}

    //: func cleanAnimating() {
    func currentAgain() {}

    //: func pauseAnimation() {
    func birthplace() {}

    //: func resumeAnimation() ->Bool {
    func resumeInfoAnimation() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func locationName(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return ExactlyAnimatTool.shared.outsideFile(fileName: fileName, model: self.effectMsgModel!)
    }
}
