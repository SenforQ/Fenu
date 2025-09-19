
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_nameFormat:[UInt8] = [0x90,0x97,0x90,0x8d,0xd1,0x9a,0x96,0x9d,0x9c,0x8b,0xc3,0xd0,0xd9,0x91,0x98,0x8a,0xd9,0x97,0x96,0x8d,0xd9,0x9b,0x9c,0x9c,0x97,0xd9,0x90,0x94,0x89,0x95,0x9c,0x94,0x9c,0x97,0x8d,0x9c,0x9d]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableicialCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class EnableicialCellData: TalkingChatMsgBaseCellData {
@objcMembers public class EnableicialCellData: MarkCellData {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: SignalTitleConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_nameFormat.map{$0^249}, encoding: .utf8)!)
    }

    //: public override func contentSize() -> CGSize {
    override public func sizeThinReading() -> CGSize {
        //: return CGSize(width: 120, height: 120)
        return CGSize(width: 120, height: 120)
    }
}
