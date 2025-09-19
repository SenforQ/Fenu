
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_automaticIdent:[UInt8] = [0xbc,0xbb,0xbc,0xa1,0xfd,0xb6,0xba,0xb1,0xb0,0xa7,0xef,0xfc,0xf5,0xbd,0xb4,0xa6,0xf5,0xbb,0xba,0xa1,0xf5,0xb7,0xb0,0xb0,0xbb,0xf5,0xbc,0xb8,0xa5,0xb9,0xb0,0xb8,0xb0,0xbb,0xa1,0xb0,0xb1]

private func selectBag(handle num: UInt8) -> UInt8 {
    return num ^ 213
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TowardReactiveCompatible.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class TowardReactiveCompatible: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        paraYesterday()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_automaticIdent.map{selectBag(handle: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension TowardReactiveCompatible {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func romaineLettuce() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = LanceManager.doingResource().buttonPositions()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: GentleItemModel) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? SmallTownReactiveCompatible
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.owner(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func makeupLocal(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = LanceManager.doingResource().trademark(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? SmallTownReactiveCompatible
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.owner(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func ownInvitationWindow(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = LanceManager.doingResource().trademark(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? SmallTownReactiveCompatible
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.theGreetBoard(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension TowardReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func paraYesterday() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kViewDismissMarginPath {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * appCountSenseMessage.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if PrintingReactiveCompatible.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = noti_senseContent - startX - appCountSenseMessage.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = SmallTownReactiveCompatible()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * appCountSenseMessage.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = appCountSenseMessage
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
