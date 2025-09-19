
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let mainForeMessage:String = "PingFangvia track"
fileprivate let appRecommendStr:String = "SC-stat prompt general"
fileprivate let dream_pingMsg:String = "earn fillRegular"

/*: "PingFangSC-Medium" :*/
fileprivate let notiReadText:String = "stop work inputPing"
fileprivate let mBlindTitle:String = "-Mletter photo patent"
fileprivate let k_supplyUrl:String = "eduniformm"

/*: "PingFangSC-Semibold" :*/
fileprivate let m_runningPath:String = "pressure separate merit beyond bossPingFa"
fileprivate let user_buildFamilyId:String = "ngSC-grated entry four little"
fileprivate let main_uniteFormat:String = "media sibling fruit fair directionSemi"

/*: "PingFangSC-Thin" :*/
fileprivate let main_multiId:[Character] = ["P","i","n","g","F"]
fileprivate let k_chinYesterdayTitle:String = "angScontrol fare"

/*: "PingFangSC-Light" :*/
fileprivate let m_knowName:String = "PingFsignal i in fruit"
fileprivate let kSystemPath:[Character] = ["g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let show_feministId:String = "PingFsite launch village walk wall"
fileprivate let dreamCurrentlyFormat:String = "C-Ultrcontinue rear"
fileprivate let notiSkipUrl:[Character] = ["h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func afterDisable(type: CollectionCantFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(mainForeMessage.prefix(8)) + String(appRecommendStr.prefix(3)) + String(dream_pingMsg.suffix(7))), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(notiReadText.suffix(4)) + "FangSC" + String(mBlindTitle.prefix(2)) + k_supplyUrl.replacingOccurrences(of: "uniform", with: "iu")), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(m_runningPath.suffix(6)) + String(user_buildFamilyId.prefix(5)) + String(main_uniteFormat.suffix(4)) + "bold"), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(main_multiId) + String(k_chinYesterdayTitle.prefix(4)) + "C-Thin"), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(m_knowName.prefix(5)) + "angSC-Li" + String(kSystemPath)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(show_feministId.prefix(5)) + "angS" + String(dreamCurrentlyFormat.prefix(6)) + "alig" + String(notiSkipUrl)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func soil(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.afterDisable(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func imitationClotheStatement(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.afterDisable(type: .Medium, fontSize: fontSize)
    }
}
