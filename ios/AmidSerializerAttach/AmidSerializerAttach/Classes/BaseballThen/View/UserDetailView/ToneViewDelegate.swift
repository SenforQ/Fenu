
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiBelowIdent:[UInt8] = [0xe3,0xe8,0xe3,0xee,0xa2,0xdd,0xe9,0xde,0xdf,0xec,0xb4,0xa3,0x9a,0xe2,0xdb,0xed,0x9a,0xe8,0xe9,0xee,0x9a,0xdc,0xdf,0xdf,0xe8,0x9a,0xe3,0xe7,0xea,0xe6,0xdf,0xe7,0xdf,0xe8,0xee,0xdf,0xde]

fileprivate func perPaper(keep num: UInt8) -> UInt8 {
    let value = Int(num) - 122
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Not reaching the required level" :*/
fileprivate let main_animaPlayKey:[UInt8] = [0x1f,0x3e,0x25,0x71,0x23,0x34,0x30,0x32,0x39,0x38,0x3f,0x36,0x71,0x25,0x39,0x34,0x71,0x23,0x34,0x20,0x24,0x38,0x23,0x34,0x35,0x71,0x3d,0x34,0x27,0x34,0x3d]

private func indicatorWorker(lose num: UInt8) -> UInt8 {
    return num ^ 81
}

/*: "text_fee" :*/
fileprivate let main_advocateMsg:String = "removalxt"

/*: "video_fee" :*/
fileprivate let mBorderMightStr:String = "abs to feevideo_fee"

/*: "voice_fee" :*/
fileprivate let main_canPath:String = "layer say topic external hidevoice_fe"
fileprivate let mainDateMessage:[Character] = ["e"]

/*: "value" :*/
fileprivate let main_interestId:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToneViewDelegate.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemaleChatSetView: UIView {
class ToneViewDelegate: UIView {
    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [ImplementationInexpensivenessTransformable] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = TalkingPopView()
    var popView = AsideView()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = main_showUrl
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: ImplementationInexpensivenessTransformable) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.discount()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiBelowIdent.map{perPaper(keep: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.landmarkBalance()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(MigrationView.self, forCellReuseIdentifier: MigrationView.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension ToneViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: MigrationView.className(), for: indexPath) as! MigrationView
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: ImplementationInexpensivenessTransformable = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.database(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: ImplementationInexpensivenessTransformable = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(AdministratorThen.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(AdministratorThen.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.iconThemeBringBackPlace(showMsg: String(bytes: main_animaPlayKey.map{indicatorWorker(lose: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        changeContentModel(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func changeContentModel(model: ImplementationInexpensivenessTransformable) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        VillageView.projectShow()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (main_advocateMsg.replacingOccurrences(of: "removal", with: "te") + "_fee")
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (String(mBorderMightStr.suffix(9)))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (String(main_canPath.suffix(8)) + String(mainDateMessage))
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(String(main_interestId))] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        MeThen.form(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            VillageView.statusDismiss()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.dropShared()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.iconThemeBringBackPlace(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension ToneViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func discount() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: appMineMessage, width: noti_senseContent, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.viewChin(view: self)
        //: popView.showInView(view: CreditsThen.getWindow())
        popView.validMake(view: CreditsThen.captain())
    }

    //: @objc func dismissView() {
    @objc func dropShared() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: appMineMessage, width: noti_senseContent, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.theme()
        }
    }

    //: func showView() {
    func fun() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: appMineMessage - self.contentHeight, width: noti_senseContent, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
