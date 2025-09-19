
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let notiPointBothId:[UInt8] = [0xc0,0xed,0xf7,0xf4,0xe5,0xf0,0xe7,0xec,0xd5,0xf1,0xe1,0xf1,0xe1,0xd0,0xeb,0xef,0xe1,0xea,0xdb,0xd7,0xf0,0xe5,0xf0,0xf1,0xf7,0xc6,0xe5,0xf6,0xcd,0xea,0xed,0xf0]

private func chanceFrom(play num: UInt8) -> UInt8 {
    return num ^ 132
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let showDismissText = String(bytes: notiPointBothId.map{chanceFrom(play: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func taConversion(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
