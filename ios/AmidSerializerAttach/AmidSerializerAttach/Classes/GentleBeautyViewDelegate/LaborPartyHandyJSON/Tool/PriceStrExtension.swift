
//: Declare String Begin

/*: "Free" :*/
fileprivate let main_dynamicsPath:String = "stove our enhanceFree"

/*: " Free 1min" :*/
fileprivate let notiSequenceMessage:[Character] = [" ","F","r","e","e"]
fileprivate let show_norPath:[Character] = [" ","1","m","i","n"]

/*: "Video Call" :*/
fileprivate let dreamShadeFullIdent:String = "Videothrough false double"
fileprivate let k_matchStillId:String = "stat error front candidate Call"

/*: "icon_video_bd" :*/
fileprivate let dreamRunLengthMessage:String = "icon_videscene library operation"
fileprivate let mComprehensiveRevenueSensorId:[Character] = ["o","_","b","d"]

/*: "\n %@/min" :*/
fileprivate let k_hypothesisMsg:[Character] = ["\n"," ","%","@","/","m","i","n"]

/*: "icon_coin_pre" :*/
fileprivate let main_runningTitle:String = "icon_skirt executive cut anonymous think"
fileprivate let main_lipThumbMessage:String = "thick limit fieldcoin_pre"

/*: "\n %@ %@/min" :*/
fileprivate let app_ourselvesKey:[Character] = ["\n"," ","%","@"," ","%"]
fileprivate let userIdentificationValue:String = "@/minstack into clean very"

/*: "%@/min" :*/
fileprivate let show_originIdent:[Character] = ["%","@","/","m","i","n"]

/*: "#D8D8D8" :*/
fileprivate let mainHoweverEditorKey:String = "sixth execute combined in create#D8D8D8"

/*: "Free 1 min" :*/
fileprivate let user_problemKey:String = "Free 1 texture jaw cell perfect shade"
fileprivate let show_plainId:[Character] = ["m","i","n"]

/*: "%@ Coins/min" :*/
fileprivate let user_thinStr:String = "whether bass%@ Coin"
fileprivate let noti_borderText:String = "s/minsustain republic boss log walk"

/*: "%@ Gold coins / Min" :*/
fileprivate let appProblemSeriousMsg:String = "%@ Golblue point prepare post"
fileprivate let dream_apartmentMessage:[Character] = ["d"," ","c","o","i","n","s"," ","/"," ","M","i","n"]

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let user_nationalTitle:String = "Video Clittle on regular equal until"
fileprivate let noti_commercialValue:String = "all (conversation reverse"
fileprivate let kPlaceValue:String = "%@ Cocease path design rank"

/*: "Voice Call" :*/
fileprivate let k_localTitle:[Character] = ["V","o","i","c","e"," ","C","a","l","l"]

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let user_liteValue:[Character] = ["V","o","i","c","e"," ","C","a","l","l"," ","(","%","@"," ","C","o","i","n","s","/","m","i","n"]
fileprivate let mPictureSmallMessage:[Character] = [")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func buildStyle(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if AdministratorThen.share.appStatus == AppSkinStatus.special.rawValue {
        if AdministratorThen.share.appStatus == BecauseMultiplierTarget.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(main_dynamicsPath.suffix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(main_dynamicsPath.suffix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(notiSequenceMessage) + String(show_norPath)).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.afterDisable(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.scribeNumber(name: (String(dreamRunLengthMessage.prefix(9)) + String(mComprehensiveRevenueSensorId)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.afterDisable(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.scribeNumber(name: (String(dreamRunLengthMessage.prefix(9)) + String(mComprehensiveRevenueSensorId)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (String(k_hypothesisMsg)).innerArguments(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.scribeNumber(name: (String(main_runningTitle.prefix(5)) + String(main_lipThumbMessage.suffix(8))))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.afterDisable(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (String(app_ourselvesKey) + String(userIdentificationValue.prefix(5))).innerArguments(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.scribeNumber(name: (String(main_runningTitle.prefix(5)) + String(main_lipThumbMessage.suffix(8))))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.afterDisable(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (String(show_originIdent)).innerArguments(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(mainHoweverEditorKey.suffix(7))))!, .font: UIFont.afterDisable(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func societyVoiceCon(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else {
            //: return "Video Call".localized
            return (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
        }
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0 {
            //: if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
            if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(user_problemKey.prefix(7)) + String(show_plainId)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(user_thinStr.suffix(7)) + String(noti_borderText.prefix(5))).innerArguments(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(appProblemSeriousMsg.prefix(6)) + String(dream_apartmentMessage)).innerArguments(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func talkJump(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = GageType.nor
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
            if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(user_problemKey.prefix(7)) + String(show_plainId)).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.manualColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(user_nationalTitle.prefix(7)) + String(noti_commercialValue.prefix(5)) + String(kPlaceValue.prefix(5)) + "ins/min)").innerArguments(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.manualColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.fogColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func aboveSpeaker(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = GageType.nor
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
            if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(user_problemKey.prefix(7)) + String(show_plainId)).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(k_localTitle)).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.manualColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(k_localTitle)).localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(user_liteValue) + String(mPictureSmallMessage)).innerArguments(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.manualColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.fogColor(), .font: UIFont.afterDisable(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func purchaseRecord(videoPrice: String) -> String {
        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else {
            //: return "Video Call".localized
            return (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
        }
        //: let index = EnableFreeCallType.nor
        let index = GageType.nor
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
            if AdministratorThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(user_problemKey.prefix(7)) + String(show_plainId)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(dreamShadeFullIdent.prefix(5)) + String(k_matchStillId.suffix(5))).localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(user_thinStr.suffix(7)) + String(noti_borderText.prefix(5))).innerArguments(videoPrice)
        }
    }
}
