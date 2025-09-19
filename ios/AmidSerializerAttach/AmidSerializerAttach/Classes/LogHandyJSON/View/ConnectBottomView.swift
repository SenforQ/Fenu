
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mProvideCityStr:[UInt8] = [0xe7,0xe0,0xe7,0xfa,0xa6,0xed,0xe1,0xea,0xeb,0xfc,0xb4,0xa7,0xae,0xe6,0xef,0xfd,0xae,0xe0,0xe1,0xfa,0xae,0xec,0xeb,0xeb,0xe0,0xae,0xe7,0xe3,0xfe,0xe2,0xeb,0xe3,0xeb,0xe0,0xfa,0xeb,0xea]

private func alongsideSomeone(curve num: UInt8) -> UInt8 {
    return num ^ 142
}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let showCameraStr:String = "icoplan"
fileprivate let kRepresentationValue:String = "iao_nfinancial smooth assert pan why"
fileprivate let showWordMsg:[Character] = ["a","n","d","i","_","d","e","f","a","u","l","t"]

/*: "iv_crush" :*/
fileprivate let userRemainUpperIdent:String = "itexture"
fileprivate let noti_tingPackageName:String = "ok minimize hear property own_crush"

/*: "Crush" :*/
fileprivate let mainDeleteRefPunishText:String = "gap collect site eastern secureCrush"

/*: "get json error" :*/
fileprivate let showHeartYieldData:String = "complexity civil train fiscalget js"
fileprivate let userSufficientFormat:String = "RROR"

/*: "targetUid" :*/
fileprivate let main_containFormat:String = "tpricege"

/*: "The other party has received your crush" :*/
fileprivate let showObserverData:[UInt8] = [0xfd,0x11,0xe,0xc9,0x18,0x1d,0x11,0xe,0x1b,0xc9,0x19,0xa,0x1b,0x1d,0x22,0xc9,0x11,0xa,0x1c,0xc9,0x1b,0xe,0xc,0xe,0x12,0x1f,0xe,0xd,0xc9,0x22,0x18,0x1e,0x1b,0xc9,0xc,0x1b,0x1e,0x1c,0x11]

fileprivate func hideResponse(instance num: UInt8) -> UInt8 {
    let value = Int(num) + 87
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConnectBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class ConnectBottomView: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        pushLayer()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mProvideCityStr.map{alongsideSomeone(curve: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func pushLayer() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.fruitThumb(51, 51, 51, 0.8)

        //: guard AdministratorThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard AdministratorThen.share.appStatus == BecauseMultiplierTarget.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: WordOfAdviceThen = {
        //: let btn = TalkingButton.init()
        let btn = WordOfAdviceThen()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.scribeNumber(name: (showCameraStr.replacingOccurrences(of: "plan", with: "n") + "_zil" + String(kRepresentationValue.prefix(5)) + String(showWordMsg))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.scribeNumber(name: (userRemainUpperIdent.replacingOccurrences(of: "texture", with: "v") + String(noti_tingPackageName.suffix(6)))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(mainDeleteRefPunishText.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.imitationClotheStatement(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(down), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension ConnectBottomView: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func down() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = SampleEffectTool.default.joinWeight(type: .Crush)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(showHeartYieldData.suffix(6)) + "on e" + userSufficientFormat.lowercased()))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(main_containFormat.replacingOccurrences(of: "price", with: "ar") + "tUid")] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        LiteralReactiveCompatible.panSend(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.photoExample(showMsg: String(bytes: showObserverData.map{hideResponse(instance: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
