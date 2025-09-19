
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let kUniversalPath:String = "forest click capture negativeparty/"

/*: "roomId" :*/
fileprivate let notiMoveKey:[UInt8] = [0xb2,0xaf,0xaf,0xad,0x89,0xa4]

private func adjustResult(describe num: UInt8) -> UInt8 {
    return num ^ 192
}

/*: "party/start" :*/
fileprivate let appDeliveryMessage:String = "violation publicparty/st"
fileprivate let m_guideIdent:[Character] = ["a","r","t"]

/*: "party/close" :*/
fileprivate let mainConceptWoodValue:[Character] = ["p","a","r","t","y","/","c"]
fileprivate let app_patentUrl:String = "lointereste"

/*: "party/changeRoom" :*/
fileprivate let m_honeyPrettyTitle:[Character] = ["p","a","r","t","y","/","c","h","a","n","g","e","R"]
fileprivate let dream_mergeStr:[Character] = ["o","o","m"]

/*: "beforeRoomId" :*/
fileprivate let mSatisfyFormat:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x52,0x65,0x72,0x6f,0x66,0x65,0x62]

/*: "party/mikeList" :*/
fileprivate let noti_mightFormat:String = "property huge electparty/"
fileprivate let show_transformId:[Character] = ["m","i","k"]
fileprivate let showPlotData:String = "enough forehead focuseList"

/*: "uid" :*/
fileprivate let dreamProviderContent:[UInt8] = [0x2f,0x33,0x3e]

private func hemFraction(dimension num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "type" :*/
fileprivate let userEconomicMessage:[UInt8] = [0xf2,0xff,0xf6,0xe3]

private func uniformProjectIdentify(conduct num: UInt8) -> UInt8 {
    return num ^ 134
}

/*: "pos" :*/
fileprivate let dream_heartData:[UInt8] = [0x50,0x4f,0x53]

private func sweetChoice(support num: UInt8) -> UInt8 {
    return num ^ 32
}

/*: "toPos" :*/
fileprivate let k_stareName:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let show_portValue:[Character] = ["p","a","r"]
fileprivate let notiSecretMessage:String = "ty/mikeinvolve recording civic join"

/*: "party/adminMike" :*/
fileprivate let notiFilterIdent:String = "PART"
fileprivate let user_contractValue:String = "body cute return global leastinMike"

/*: "party/list" :*/
fileprivate let app_orientationPath:[Character] = ["p","a","r","t","y","/","l","i","s"]
fileprivate let showDetailedTitle:String = "advocate"

/*: "party/onlineNum" :*/
fileprivate let m_flexibleUrl:[Character] = ["p","a","r","t","y"]
fileprivate let appEnhanceName:String = "/onlilack cast impression"
fileprivate let dream_encounterEqualValue:[Character] = ["n","e","N","u","m"]

/*: "party/onlineList" :*/
fileprivate let userFiscalUrl:[Character] = ["p","a","r","t","y","/"]
fileprivate let userResourceName:String = "ocloudlicloude"

/*: "party/mute" :*/
fileprivate let main_exploreName:String = "appearart"
fileprivate let showBeautifulTitle:String = "TE"

/*: "targetUid" :*/
fileprivate let mUniteData:[UInt8] = [0x16,0x3,0x10,0x5,0x7,0x16,0x37,0xb,0x6]

/*: "duration" :*/
fileprivate let user_addStr:[UInt8] = [0xab,0xba,0xbd,0xae,0xbb,0xa6,0xa0,0xa1]

private func snapUnknown(woman num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "party/unmute" :*/
fileprivate let mainConductIdent:String = "into faculty ownerparty/"

/*: "party/kickout" :*/
fileprivate let dream_rowValue:[Character] = ["p","a","r"]
fileprivate let mCombineName:String = "ty/kgender publish conversation"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnReqTool.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class OnReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func aboutCompletion(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (String(kUniversalPath.suffix(6)) + "enter")
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(appDeliveryMessage.suffix(8)) + String(m_guideIdent))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func rankCompletion(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(mainConceptWoodValue) + app_patentUrl.replacingOccurrences(of: "interest", with: "s"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func faculty(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(m_honeyPrettyTitle) + String(dream_mergeStr))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId, String(bytes: mSatisfyFormat.reversed(), encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func bringForthCompletion(roomId: String, completion: @escaping (_ data: [GentleItemModel]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(noti_mightFormat.suffix(6)) + String(show_transformId) + String(showPlotData.suffix(5)))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        appDepthCornerContent.wrinkle(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [GentleItemModel] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<GentleItemModel>.deserialize(from: arr as? Array) as? [GentleItemModel] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func recording(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId, String(bytes: dreamProviderContent.map{hemFraction(dimension: $0)}, encoding: .utf8)!: uid, String(bytes: userEconomicMessage.map{uniformProjectIdentify(conduct: $0)}, encoding: .utf8)!: type, String(bytes: dream_heartData.map{sweetChoice(support: $0)}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(k_stareName))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (String(show_portValue) + String(notiSecretMessage.prefix(7)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func threadFilter(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (notiFilterIdent.lowercased() + "y/adm" + String(user_contractValue.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId, String(bytes: dreamProviderContent.map{hemFraction(dimension: $0)}, encoding: .utf8)!: uid, String(bytes: userEconomicMessage.map{uniformProjectIdentify(conduct: $0)}, encoding: .utf8)!: type, String(bytes: dream_heartData.map{sweetChoice(support: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func catalogue(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(app_orientationPath) + showDetailedTitle.replacingOccurrences(of: "advocate", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func quantity(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(m_flexibleUrl) + String(appEnhanceName.prefix(5)) + String(dream_encounterEqualValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func establish(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(userFiscalUrl) + userResourceName.replacingOccurrences(of: "cloud", with: "n") + "List")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func behindPrimary(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (main_exploreName.replacingOccurrences(of: "appear", with: "p") + "y/mu" + showBeautifulTitle.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: mUniteData.map{$0^98}, encoding: .utf8)!: targetUid, String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomID, String(bytes: user_addStr.map{snapUnknown(woman: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func anyCleanPrevious(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(mainConductIdent.suffix(6)) + "unmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: mUniteData.map{$0^98}, encoding: .utf8)!: targetUid, String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func guide(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = DoingicialReactiveCompatible()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(dream_rowValue) + String(mCombineName.prefix(4)) + "ickout")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: mUniteData.map{$0^98}, encoding: .utf8)!: targetUid, String(bytes: notiMoveKey.map{adjustResult(describe: $0)}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        appDepthCornerContent.wrinkle(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
