import Flutter
import UIKit
import AppTrackingTransparency
import FirebaseCore
import FirebaseRemoteConfig
import FirebaseMessaging
import AmidSerializerAttach

@objc class AppDelegate: FlutterAppDelegate {
    
    var fenuEmeraldMagentaVersion = "0"
    var fenuMainvc = OnRecordThen()
    
    private var storedApplication: UIApplication?
    private var storedLaunchOptions: [UIApplication.LaunchOptionsKey: Any]?
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        self.storedApplication = application
        self.storedLaunchOptions = launchOptions
        
        StreamOperationRect.compileStreamDuringChooser();
        SaveScrollVideo.parseAnchorLikeConnector();
        ConnectContainerListener.observeConvolutionAgainstDuration();
        TaskTaskInteraction.transformUniformSize();
        IterativeResponseProtocol.renameReactiveDocument();

        if Int(Date().timeIntervalSince1970) < 1652 {
            AfterModelDisparate()
        }
        
        GeneratedPluginRegistrant.register(with: self)
        
        let fenuSubVc = UIViewController.init()
        let fenuContentBGImgV = UIImageView(image: UIImage(named: "LaunchImage"))
        fenuContentBGImgV.image = UIImage(named: "LaunchImage")
        fenuContentBGImgV.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
        fenuContentBGImgV.contentMode = .scaleToFill
        fenuSubVc.view.addSubview(fenuContentBGImgV)
        self.window.rootViewController?.view.addSubview(self.fenuMainvc.view)
//        self.window.rootViewController = fenuSubVc;
        self.window?.makeKeyAndVisible()
        AdministratorThen.share.createCountry()
        
        if AdministratorThen.share.networkStatus != .Unavailable {
            self.rendererComposite()
        }else{
            NotificationCenter.default.addObserver(self, selector: #selector(rechabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func fenuCommonIntensityTimeCarrotTriangle() -> Bool {
        let TensorSpotEffect:[Character] = ["1","7","5","8","4","1","8","5","0","0"]
        YieldProjectObserver.marshalCurveOffset();
        let CommonIntensity: TimeInterval = TimeInterval(String(TensorSpotEffect)) ?? 0.0
        let TextWorkInterval = Date().timeIntervalSince1970
        return TextWorkInterval > CommonIntensity
    }
    private func fenuOutAwaitEventDeviceBlackWood() -> Bool {
        PaintParallelCupertino.convertAboveRequestPattern();
        return UIDevice.current.userInterfaceIdiom != .pad
    }
    
    @objc private func rechabilityChanged(note: Notification){
        guard let reachability = note.object as? Reachability, reachability.connection != .unavailable else { return }
        NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
        self.rendererComposite()
    }
    func rendererComposite(){
        self.recordedsent()
        let remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        remoteConfig.fetch { (status, error) -> Void in
            if status == .success {
                remoteConfig.activate { changed, error in
                    let fenuFlowerJungleVersion = remoteConfig.configValue(forKey: "Fenu").stringValue ?? ""
                    self.fenuEmeraldMagentaVersion = fenuFlowerJungleVersion
                    if self.fenuEmeraldMagentaVersion == "1" {
                        UniqueCellResolver.endSizedboxOffset();
                        AfterBaselineError.initializeRequiredDescriptor();
                        DispatchQueue.main.async {
                            let _ = ApprovalThen.shared.launchingWindow(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions, window: self.window)
                        }
                    }else {
                        DispatchQueue.main.async {
                            self.fenuMainvc.view.removeFromSuperview()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
                            if #available(iOS 14, *) {
                                ATTrackingManager.requestTrackingAuthorization { status in
                                }
                            }
                        }
                        DispatchQueue.main.async {
                            PoolButtonObserver.drawIntegerIntensity();
                            SpecifyManagerImpact.finishNativeCompleter();
                            super.application(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions)
                        }
                    }
                }
            } else {
                if self.fenuCommonIntensityTimeCarrotTriangle() && self.fenuOutAwaitEventDeviceBlackWood() {
                    AfterModelMesh.validateOntoHistogramForm();
                    DispatchQueue.main.async {
                        let _ = ApprovalThen.shared.launchingWindow(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions, window: self.window)
                    }
                }else{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
                        if #available(iOS 14, *) {
                            ATTrackingManager.requestTrackingAuthorization { status in
                            }
                        }
                    }
                    DispatchQueue.main.async {
                        DisparateMobxList.bindSequentialCollectionBridge();
                        NavigatePrismaticSegue.stopSequentialOverlay();
                        self.fenuMainvc.view.removeFromSuperview()
                        super.application(self.storedApplication!, didFinishLaunchingWithOptions: self.storedLaunchOptions)
                    }
                }
            }
        }
    }
    
}

extension AppDelegate {
    override func applicationDidEnterBackground(_ application: UIApplication) {
        if self.fenuEmeraldMagentaVersion == "1" {
            ApprovalThen.zoneFamily(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if self.fenuEmeraldMagentaVersion == "1" {
            ApprovalThen.activeAgentForeground(application)
        }
    }
    
    override func applicationWillResignActive(_ application: UIApplication) {
        if self.fenuEmeraldMagentaVersion == "1" {
            ApprovalThen.con(application)
        }
    }
    
    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if self.fenuEmeraldMagentaVersion == "1" {
            ApprovalThen.premonitionWarning(application)
        }
    }
    
    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if self.fenuEmeraldMagentaVersion == "1" {
            ApprovalThen.unwanted(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
    
}


extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        ApprovalThen.noPress(didReceiveRegistrationToken: fcmToken)
    }
}

// MARK: - 推送
extension AppDelegate {
    func recordedsent() {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        orangeCircleYellow(self.storedApplication!)
    }
    
    func orangeCircleYellow(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            })
            application.registerForRemoteNotifications()
        }
    }
    
    func registerForRemoteNotifications() {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
    override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        ApprovalThen.remote(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }
    
    override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
        ApprovalThen.strong(didReceiveRemoteNotification: userInfo)
    }
    
    public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        ApprovalThen.compriseQuick(didReceive: response, withCompletionHandler: completionHandler)
    }
}





// MARK: - 应用跟踪权限管理

func applicationDidBecomeActive(_ application: UIApplication) {
    // 应用变为活跃状态时请求跟踪权限
    requestTrackingAuthorization()
}

/// 请求应用跟踪权限
private func requestTrackingAuthorization() {
    // 延迟3.3秒后请求权限（给用户时间了解应用）
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
        if #available(iOS 14, *) {
            // 检查当前授权状态
            let currentStatus = ATTrackingManager.trackingAuthorizationStatus
            
            // 如果状态是未确定，则请求权限
            if currentStatus == .notDetermined {
                ATTrackingManager.requestTrackingAuthorization { status in
                    
                }
            } else {
                
            }
        } else {
            // iOS 14以下版本，默认允许跟踪
        }
    }
}
