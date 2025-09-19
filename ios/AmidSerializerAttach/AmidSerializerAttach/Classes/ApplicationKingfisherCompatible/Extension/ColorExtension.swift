
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let app_publishValue:String = "#"
fileprivate let show_rowId:String = "drop hold parent8A79F9"

/*: "#E6BD8B" :*/
fileprivate let user_pickPath:String = "spring bind enhance#E6BD8B"

/*: "#F5F5F8" :*/
fileprivate let k_allianceTitle:String = "bright forest#F5F5"
fileprivate let appAnalysisKey:String = "Fover"

/*: "333333" :*/
fileprivate let kRetirementIdent:[Character] = ["3","3","3","3","3"]
fileprivate let app_sinkMsg:[Character] = ["3"]

/*: "FF2348" :*/
fileprivate let dream_unitMessage:[Character] = ["F","F","2","3","4","8"]

/*: "666666" :*/
fileprivate let k_attachIdent:String = "segmentsegmentsegmentsegmentsegmentsegment"

/*: "999999" :*/
fileprivate let app_selectionUrl:String = "999999"

/*: "7C74F4" :*/
fileprivate let noti_visitorPath:[Character] = ["7","C","7","4","F","4"]

/*: "B97AF8" :*/
fileprivate let notiHighlightKey:[Character] = ["B","9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let m_greenMsg:[Character] = ["#","F","F","5","C","9"]
fileprivate let app_phoneMessage:[Character] = ["D"]

/*: "#EEEEEE" :*/
fileprivate let app_cookieTitle:String = "#EEEEdelivery judicial middle"
fileprivate let notiBeyondPath:String = "telltell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func fruitThumb(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func fogColor() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (app_publishValue.capitalized + String(show_rowId.suffix(6))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func processCur() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(user_pickPath.suffix(7))))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func landmarkBalance() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(k_allianceTitle.suffix(5)) + appAnalysisKey.replacingOccurrences(of: "over", with: "8")))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func manualColor() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(kRetirementIdent) + String(app_sinkMsg)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func nonsolidColor() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(dream_unitMessage)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func portion() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (k_attachIdent.replacingOccurrences(of: "segment", with: "6")))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func fluent() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (app_selectionUrl.capitalized))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func printColor() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(noti_visitorPath)))!.cgColor, UIColor(hex: (String(notiHighlightKey)))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func exceptRut() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(m_greenMsg) + String(app_phoneMessage)))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(m_greenMsg) + String(app_phoneMessage)))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func bossInvitation() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(app_cookieTitle.prefix(5)) + notiBeyondPath.replacingOccurrences(of: "tell", with: "E")))!
    }

    //: class func getRandomColor() -> UIColor {
    class func stopExit() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
