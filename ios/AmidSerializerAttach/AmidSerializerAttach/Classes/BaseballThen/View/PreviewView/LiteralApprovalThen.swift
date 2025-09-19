
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dream_beyondStr:[UInt8] = [0x26,0x2b,0x26,0x31,0xe5,0x20,0x2c,0x21,0x22,0x2f,0xf7,0xe6,0xdd,0x25,0x1e,0x30,0xdd,0x2b,0x2c,0x31,0xdd,0x1f,0x22,0x22,0x2b,0xdd,0x26,0x2a,0x2d,0x29,0x22,0x2a,0x22,0x2b,0x31,0x22,0x21]

fileprivate func silverStar(good num: UInt8) -> UInt8 {
    let value = Int(num) - 189
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
//  LiteralApprovalThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class LiteralApprovalThen: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.retirementProgram()
        //: self.setupSubViewsConstraint()
        self.belowCalendar()
        //: self.bindInteraction()
        self.stickToBusyQuantityeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dream_beyondStr.map{silverStar(good: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension LiteralApprovalThen {
    //: private func bindInteraction() {
    private func stickToBusyQuantityeraction() {}

    //: @objc func registerLikeAction() {
    @objc func move() {
        //: self.likeRequest()
        self.bosom()
    }

    //: @objc func registerChatAction() {
    @objc func scriptAction() {
        //: self.chatPush()
        self.havePush()
    }

    //: @objc func registerCrushAction() {
    @objc func rawAdvertising() {
        //: self.crushRequest()
        self.timeMonth()
    }

    //: @objc func registerCommentAction() {
    @objc func comment() {
        //: self.commentPush()
        self.past()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension LiteralApprovalThen {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func brightKeep(model: PubInfoModel) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func havePush() {}

    //: private func commentPush() {
    private func past() {}

    //: private func crushRequest() {
    private func timeMonth() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        AdvocateReactiveCompatible.putCompletion(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func bosom() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        AdvocateReactiveCompatible.numbero(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension LiteralApprovalThen {
    //: private func setupSubviews() {
    private func retirementProgram() {}

    //: private func setupSubViewsConstraint() {
    private func belowCalendar() {}
}
