
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let dreamMiniIdent:[Character] = ["b","g","_","t","a","l","k"]
fileprivate let m_actionName:String = "space just write_other"

/*: "bg_talk_me" :*/
fileprivate let mainPatentValue:String = "bg_talhe assert contrast lap"
fileprivate let user_villageMessage:[Character] = ["k","_","m","e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let dream_gapValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarkCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: ReconstructThen {
@objcMembers public class MarkCellData: ReconstructThen {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: SignalTitleConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.lameCon(name: (String(dreamMiniIdent) + String(m_actionName.suffix(6))))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = TwoReactiveCompatible.accelerate()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.lameCon(name: (String(mainPatentValue.prefix(6)) + String(user_villageMessage)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = TwoReactiveCompatible.mapOut()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dream_gapValue.reversed(), encoding: .utf8)!)
    }
}
