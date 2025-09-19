
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let user_enhanceFrontKey:String = "negative appearance readLaunc"
fileprivate let app_warnValue:String = "shot invitation genderhImage"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnRecordThen.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class OnRecordThen: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: noti_senseContent, height: appMineMessage)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(user_enhanceFrontKey.suffix(5)) + String(app_warnValue.suffix(6))))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}
