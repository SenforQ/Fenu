
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let notiTodayHundredKey:[Character] = ["C","a","c"]
fileprivate let main_houseValue:String = "heFempublicly hi supposed first submit"
fileprivate let main_advancedSucceedUrl:String = "transition country grated eonIPCall"
fileprivate let mPureMeritMessage:String = "sufficient panel distinguishrrayKey_"

/*: "CHANGE_BEAN" :*/
fileprivate let mNetSiblingFormat:[Character] = ["C","H","A","N","G","E"]
fileprivate let mainCheckKey:[Character] = ["_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let kLikelihoodPath:[UInt8] = [0x7e,0x59,0x51,0x54,0x5d,0x5c,0x18,0x4c,0x57,0x18,0x5f,0x5d,0x4c,0x18,0x4d,0x4b,0x5d,0x4a,0x18,0x51,0x56,0x5e,0x57,0x4a,0x55,0x59,0x4c,0x51,0x57,0x56,0x14,0x18,0x48,0x54,0x5d,0x59,0x4b,0x5d,0x18,0x4a,0x5d,0x4c,0x4d,0x4a,0x56,0x18,0x59,0x56,0x5c,0x18,0x4c,0x4a,0x41,0x18,0x59,0x5f,0x59,0x51,0x56]

/*: "type" :*/
fileprivate let mComplexityName:[UInt8] = [0x5,0x8,0x1,0x14]

/*: "uid" :*/
fileprivate let notiUnlessBitValue:[Character] = ["u","i","d"]

/*: "source" :*/
fileprivate let mainRequireMessage:[UInt8] = [0x65,0x63,0x72,0x75,0x6f,0x73]

/*: "fromFreeCall" :*/
fileprivate let notiSeriesKey:[Character] = ["f","r","o","m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let userBadKey:[UInt8] = [0x3f,0x31,0x38]

private func labelWelcome(committee num: UInt8) -> UInt8 {
    return num ^ 92
}

/*: "requestCall" :*/
fileprivate let userGatherBlankIdent:String = "rrecordue"
fileprivate let noti_controlStr:String = "min unless datestCall"

/*: "data" :*/
fileprivate let showNegativeKey:[UInt8] = [0xf8,0xf5,0x8,0xf5]

fileprivate func indexComprehensive(say num: UInt8) -> UInt8 {
    let value = Int(num) - 148
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "onRequestCall" :*/
fileprivate let k_rutMsg:[Character] = ["o","n","R","e","q","u"]
fileprivate let mainVidTitle:String = "side stretch heartestCall"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EntitleMenuManager.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum SampleExpressionConvertible: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void
typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void

//: class TalkingCallMenuManager: NSObject {
class EntitleMenuManager: NSObject {
    /// 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    /// 音视频功能入口（source = "videoPop" 为男性邀请视频通话弹窗）
    //: var source = ""
    var source = ""
    /// 发起建立通话失败Block
    //: var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    /// 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(AdministratorThen.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(notiTodayHundredKey) + String(main_houseValue.prefix(5)) + "aleV" + String(main_advancedSucceedUrl.suffix(6)) + "IdsA" + String(mPureMeritMessage.suffix(8))) + "\(AdministratorThen.share.loginUid)"

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        AdviceLandscapeReactiveCompatible.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        AdviceLandscapeReactiveCompatible.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension EntitleMenuManager {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func inciteVisitor(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isFind == false else {
        guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.iconThemeBringBackPlace(showMsg: m_buildNearbyData)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = ChromosomeMappingView(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.requestApp(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = SampleExpressionConvertible(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(mNetSiblingFormat) + String(mainCheckKey)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(mNetSiblingFormat) + String(mainCheckKey)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.lose(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            facet(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func facet(type: SampleExpressionConvertible) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.extendedGenerateComplection()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.vocalizationSet()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func vocalizationSet(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isFind == false else {
        guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.iconThemeBringBackPlace(showMsg: m_buildNearbyData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        AsidePermissionTool.openGold(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.iconThemeBringBackPlace(showMsg: dream_topKey)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            AdviceLandscapeReactiveCompatible.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            AdviceLandscapeReactiveCompatible.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.balloon(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func extendedGenerateComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isFind == false else {
        guard AdviceLandscapeReactiveCompatible.shared.isFind == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.iconThemeBringBackPlace(showMsg: m_buildNearbyData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        AsidePermissionTool.opticalLensOn { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.iconThemeBringBackPlace(showMsg: dream_topKey)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            AdviceLandscapeReactiveCompatible.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            AdviceLandscapeReactiveCompatible.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.balloon(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension EntitleMenuManager {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func lose(type: SampleExpressionConvertible, vipPrompt: String) {
        //: guard AdministratorThen.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard AdministratorThen.share.loginUserMode.status == BecauseMultiplierTarget.normal.rawValue else {
            //: self.requestCall(type: type)
            self.facet(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = noti_foundData.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.facet(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        noti_foundData.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = ModusOperandiReactiveCompatible(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.facet(type: type)
        }
        //: alert.show()
        alert.weekDailyAdd()
    }
}

// MARK: - PickUpMatchDelegate, TwelveNoonObjectProtocol【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension EntitleMenuManager: PickUpMatchDelegate, TwelveNoonObjectProtocol {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func balloon(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.iconThemeBringBackPlace(showMsg: String(bytes: kLikelihoodPath.map{$0^56}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid, "source": source]
        var data: [String: Any] = [String(bytes: mComplexityName.map{$0^113}, encoding: .utf8)!: type, (String(notiUnlessBitValue)): uid, String(bytes: mainRequireMessage.reversed(), encoding: .utf8)!: source]
        //: let index = EnableFreeCallType.nor
        let index = GageType.nor
        //: if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && AdministratorThen.share.loginUserMode.sex == Gender.male.rawValue {
        if AdministratorThen.share.loginUserMode.freeCallTimes > 0 && AdministratorThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && AdministratorThen.share.loginUserMode.sex == RecordNameLiteral.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(notiSeriesKey)))
            //: TalkingSocketManager.shared.isFreeCall = true
            AdviceLandscapeReactiveCompatible.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: userBadKey.map{labelWelcome(committee: $0)}, encoding: .utf8)!: (userGatherBlankIdent.replacingOccurrences(of: "record", with: "eq") + String(noti_controlStr.suffix(6))), String(bytes: showNegativeKey.map{indexComprehensive(say: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        AdviceLandscapeReactiveCompatible.shared.underAccelerate(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func capAdmin(data: [String: Any]) {
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(notiUnlessBitValue))] = self.uid
        //: AdministratorThen.share.start1v1TalkCall(info: newData)
        AdministratorThen.share.auspicate(info: newData)
        //: self.onReqestCallErrorBlock?(0)
        self.onReqestCallErrorBlock?(0)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func animalData(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func playerData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(k_rutMsg) + String(mainVidTitle.suffix(7))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.iconThemeBringBackPlace(showMsg: msg)
            //: self.onReqestCallErrorBlock?(errorNo)
            self.onReqestCallErrorBlock?(errorNo)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == JawContentConvertible.MoneyLack.rawValue {
                //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else { return }
                //: DumpPushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                DumpPushManager.share.shapeStyle(clickEvent: dream_maleFormat, sufficient: false)
            }
        }
    }
}
