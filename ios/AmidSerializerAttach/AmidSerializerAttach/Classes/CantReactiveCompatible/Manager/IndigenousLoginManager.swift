
//: Declare String Begin

/*: "idToken" :*/
fileprivate let dreamNumberStr:[UInt8] = [0xbb,0xb6,0x86,0xbd,0xb9,0xb7,0xbc]

private func fileMenu(admit num: UInt8) -> UInt8 {
    return num ^ 210
}

/*: "email" :*/
fileprivate let showNosePlayerMsg:[UInt8] = [0xc6,0xce,0xc2,0xca,0xcf]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndigenousLoginManager.swift
//  AmidSerializerAttach
//
//  Created by DouXiu on 2025/7/25.
//

//: import GoogleSignIn
import GoogleSignIn
//: import UIKit
import UIKit

//: extension AppDelegateHelper {
extension ApprovalThen {
    //: class func googleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    class func service(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: return GIDSignIn.sharedInstance.handle(url)
        return GIDSignIn.sharedInstance.handle(url)
    }
}

//: class GoogleLoginManager: NSObject {
class IndigenousLoginManager: NSObject {
    //: static let shared = GoogleLoginManager()
    static let shared = IndigenousLoginManager()

    /// 登录按钮
    /// - Parameters:
    ///   - vc: 控制器
    ///   - closure: 回调
    //: func login(vc: UIViewController, closure: @escaping LoginCompletionBlock) {
    func eventPop(vc _: UIViewController, closure: @escaping LoginCompletionBlock) {
        //: guard let vc = self.currentViewController() else {
        guard let vc = self.springEquinox() else {
            //: return
            return
        }
        //: GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
        GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
            //: guard error == nil, let user = signInResult?.user else {
            guard error == nil, let user = signInResult?.user else {
                //: closure(nil)
                closure(nil)
                //: return
                return
            }
            //: let idToken = user.idToken?.tokenString ?? ""
            let idToken = user.idToken?.tokenString ?? ""
            //: let email = user.profile?.email ?? ""
            let email = user.profile?.email ?? ""
            //: let params = ["idToken": idToken, "email": email]
            let params = [String(bytes: dreamNumberStr.map{fileMenu(admit: $0)}, encoding: .utf8)!: idToken, String(bytes: showNosePlayerMsg.map{$0^163}, encoding: .utf8)!: email]
            //: closure(params)
            closure(params)
        }
    }
}
