// __DEBUG__
// __CLOSE_PRINT__
//
//  WarnRankModel.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import HandyJSON
import HandyJSON
//: import UIKit
import UIKit

//: struct SocialRankModel: HandyJSON {
struct WarnRankModel: HandyJSON {
    //: var activity: SocialPeriodModel?
    var activity: EscapeModelType?
    //: var charm: SocialPeriodModel?
    var charm: EscapeModelType?
}

//: struct SocialPeriodModel: HandyJSON {
struct EscapeModelType: HandyJSON {
    //: var yesterday: SocialResModel?
    var yesterday: ConcentrationTransformable?
    //: var today: SocialResModel?
    var today: ConcentrationTransformable?
    //: var weekly: SocialResModel?
    var weekly: ConcentrationTransformable?
}

// 毫无意义的一层，等后端后期调整
//: struct SocialResModel: HandyJSON {
struct ConcentrationTransformable: HandyJSON {
    //: var res: [SocialRankItemModel] = []
    var res: [ShrinkPickHandyJSON] = []
}

//: struct SocialRankItemModel: HandyJSON {
struct ShrinkPickHandyJSON: HandyJSON {
    //: var uid = 0
    var uid = 0
    //: var value = 0
    var value = 0
    //: var nickname: String = ""
    var nickname: String = ""
    //: var headPic: String = ""
    var headPic: String = ""
    //: var sex: String = ""
    var sex: String = ""
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame: String = ""      // 首充头像框
    var headPicFrame: String = "" // 首充头像框

    // MARK: - 自定义字段

    /// 占位字段，表示数据是否为空
    //: var isEmpty: Bool = false
    var isEmpty: Bool = false
}
