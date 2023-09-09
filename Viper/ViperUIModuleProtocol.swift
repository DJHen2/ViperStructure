
import Foundation
import UIKit

typealias WeakViewController = WeakContainer<UIViewController>
class ViperRouterUIKit:ViperRouter{
    
    static var window: UIWindow?
    static var vcs:[String:WeakViewController] = [:]
    private weak var current:UIViewController?
    
    func set(module:ViperModuleProtocol){
        current = module.view as? UIViewController
        ViperRouterUIKit.vcs[module.identifier] = WeakViewController.init(value: current!)
    }
    
    func set(window: UIWindow){
        ViperRouterUIKit.window = window
    }
    
    required init(){}
    

    internal func go(to nextModule: (UIViewController?)->(UIViewController?)){
        let vc = nextModule(current)
        if ViperRouterUIKit.window == nil && vc != nil{
            ViperRouterUIKit.window = UIWindow(frame: UIScreen.main.bounds)
            ViperRouterUIKit.window?.rootViewController = vc!
            ViperRouterUIKit.window?.makeKeyAndVisible()
            if #available(iOS 13.0, *) {
                ViperRouterUIKit.window?.overrideUserInterfaceStyle = .light
            }
        }else if ViperRouterUIKit.window != nil && (ViperRouterUIKit.window?.subviews.isEmpty ?? true){
            ViperRouterUIKit.window?.rootViewController = vc!
            ViperRouterUIKit.window?.makeKeyAndVisible()
            if #available(iOS 13.0, *) {
                ViperRouterUIKit.window?.overrideUserInterfaceStyle = .light
            }
        }
    }
    
    func changeRootViewController(with vc:UIViewController, from: UIViewController?, completion: ((UIViewController)->())? = nil) {
    
        let snapshot: UIView = ViperRouterUIKit.window!.snapshotView(afterScreenUpdates: true)!
        vc.view.addSubview(snapshot)
        
        ViperRouterUIKit.window?.subviews.forEach({ (view) in
            view.removeFromSuperview()
        })
        ViperRouterUIKit.window?.rootViewController = vc
        
        UIView.animate(withDuration: 0.3, animations: {() in
            snapshot.layer.opacity = 0;
            snapshot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5);
        }, completion: {
            (value: Bool) in
            snapshot.removeFromSuperview();
        });
        
    }
    
    func popRoot(animated: Bool) {
        current?.navigationController?.popToRootViewController(animated: animated)
    }
    
    func dismiss(animated: Bool) {
        dismiss(animated: animated, completion: nil)
    }
    
    func dismiss(animated: Bool, completion: (()->())?) {
        current?.dismiss(animated: animated){
            completion?()
        }
    }
    
    func pop(animated: Bool) {
        current?.navigationController?.popViewController(animated: animated)
    }
    
}
struct WeakContainer<T>where T: AnyObject {
    weak var _value : T?
    
    init (value: T) {
        _value = value
    }
    
    func get() -> T? {
        return _value
    }
}

