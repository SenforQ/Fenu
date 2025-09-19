
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_storageCapacityPath:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

private func draftAlbumWindow(cooperative num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "#EDEDED" :*/
fileprivate let mainFarData:[Character] = ["#","E","D","E","D"]
fileprivate let dreamWillUrl:[Character] = ["E","D"]

/*: "Click for details" :*/
fileprivate let m_yieldIdent:String = "project gravityClick f"
fileprivate let dreamOuterFormat:[Character] = ["o","r"," ","d"]
fileprivate let showCooperativeFormat:[Character] = ["e","t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let userPolicyValue:String = "then straight price media#128CF"
fileprivate let main_anyoneUrl:String = "f"

/*: "system_notif_click_go" :*/
fileprivate let show_faintName:[Character] = ["s","y","s","t","e","m","_","n"]
fileprivate let app_joinMessage:String = "arrive"
fileprivate let mWillingMessage:String = "authority tin occurtif_"

/*: "img" :*/
fileprivate let noti_insertUrl:String = "ceaseg"

/*: "jumpKey" :*/
fileprivate let show_iconIllegalFormat:[Character] = ["j","u","m","p","K"]
fileprivate let userSaveStr:[Character] = ["e","y"]

/*: "url" :*/
fileprivate let appSameKey:[Character] = ["u","r","l"]

/*: "mfChat" :*/
fileprivate let k_adjustKey:[UInt8] = [0x74,0x61,0x68,0x43,0x66,0x6d]

/*: "jumpUid" :*/
fileprivate let mRangeTitle:String = "mark import eff weekjumpUid"

/*: "mfChatGift" :*/
fileprivate let m_fieldStr:[UInt8] = [0xf2,0xeb,0xc8,0xed,0xe6,0xf9,0xcc,0xee,0xeb,0xf9]

fileprivate func mustSlow(off num: UInt8) -> UInt8 {
    let value = Int(num) - 133
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "user" :*/
fileprivate let noti_aliveIdent:[UInt8] = [0x7c,0x7a,0x6c,0x7b]

private func streetHarvest(ret num: UInt8) -> UInt8 {
    return num ^ 9
}

/*: "outerUrl" :*/
fileprivate let userDragTitle:[UInt8] = [0x6c,0x72,0x55,0x72,0x65,0x74,0x75,0x6f]

/*: "系统通知跳转失败：不支持  :*/
fileprivate let app_tableIdent:String = "系"
fileprivate let app_sheInstallTruthStr:String = "统通知\u{8df3}转失"

/*:  跳转类型。" :*/
fileprivate let dreamCommentEditionStr:[Character] = [" ","跳","转","类","型"]
fileprivate let dreamVentStackContent:[Character] = ["。"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GatherReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class GatherReactiveCompatible: PoorMsgCell {
    //: var textData: TalkingChatSystemNotifJumpMsgCellData?
    var textData: SampleAudioSystemCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        bubbleLocal()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_storageCapacityPath.map{draftAlbumWindow(cooperative: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(detailsApplication), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(mainFarData) + String(dreamWillUrl)))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(m_yieldIdent.suffix(7)) + String(dreamOuterFormat) + String(showCooperativeFormat)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (String(userPolicyValue.suffix(6)) + main_anyoneUrl.uppercased()))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.afterDisable(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "system_notif_click_go")
        imgV.image = UIImage.scribeNumber(name: (String(show_faintName) + app_joinMessage.replacingOccurrences(of: "arrive", with: "o") + String(mWillingMessage.suffix(4)) + "click_go"))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension GatherReactiveCompatible {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fieldWith(with data: PoorThen) {
        //: super.fill(with: data)
        super.fieldWith(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? TalkingChatSystemNotifJumpMsgCellData
        textData = data as? SampleAudioSystemCellData
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.overloadFinish(urlStr: textData.extraJson[(noti_insertUrl.replacingOccurrences(of: "cease", with: "im"))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.dimensionSixth(width: textData.bannerSize.width,
                                      //: height: textData.bannerSize.height,
                                      height: textData.bannerSize.height,
                                      //: corners: [ .topRight],
                                      corners: [.topRight],
                                      //: cornerRadii: CGSize(width: 12, height: 12))
                                      cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func detailsApplication() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(show_iconIllegalFormat) + String(userSaveStr))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (String(appSameKey)): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(String(appSameKey))].stringValue
            //: DumpPushManager.share.func__pushToWebVC(urlStr: url)
            DumpPushManager.share.noneControlInstall(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: k_adjustKey.reversed(), encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(mRangeTitle.suffix(7)))].stringValue
            //: DumpPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid)
            DumpPushManager.share.estimatedHave(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: m_fieldStr.map{mustSlow(off: $0)}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(mRangeTitle.suffix(7)))].stringValue
            //: DumpPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            DumpPushManager.share.estimatedHave(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.estimated()
            }
        //: case "user": // 用户详情
        case String(bytes: noti_aliveIdent.map{streetHarvest(ret: $0)}, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(mRangeTitle.suffix(7)))].stringValue
            //: DumpPushManager.share.func__pushToUserDetailVC(uid: jumpUid)
            DumpPushManager.share.belowStreet(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: userDragTitle.reversed(), encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(String(appSameKey))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (app_tableIdent.capitalized + app_sheInstallTruthStr + "败：不支\u{6301} ") + "\(jumpKey)" + (String(dreamCommentEditionStr) + String(dreamVentStackContent)))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension GatherReactiveCompatible {
    /// 初始化视图
    //: private func setupSubviews() {
    private func bubbleLocal() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
