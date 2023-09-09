//
//  UIVIewController + extension.swift
//  ThePilot
//
//  Created by Anthony on 22/2/19.
//  Copyright © 2019 Anthony. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
//    static func topViewController() -> UIViewController?{
//        if var topController = ViperRouterUIKit.window?.rootViewController {
//            while let presentedViewController = topController.presentedViewController {
//                topController = presentedViewController
//            }
//            if let nav = topController as? UINavigationController{
//                return nav.topViewController
//            }
//            return topController
//        }
//        return nil
//    }
    
    func showAlert(_ alert: UIAlertController, animated: Bool){
        self.present(alert, animated: animated)
    }
    
    func showAlert(title: String?, message: String?,style: UIAlertController.Style = .alert, buttons: [(title:String,style: UIAlertAction.Style,action:(()->())?)] = [],then: (()->())?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        if buttons.isEmpty{
            alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: { (action) in
                then?()
            }))
        }else{
            for b in buttons{
                alert.addAction(UIAlertAction.init(title: b.title, style: b.style, handler: { (action) in
                    b.action?()
                }))
            }
        }
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func showAlert(title: String, message: String, buttons:(String, UIAlertAction.Style, (() -> Void)?)...){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        for touplaBut in buttons{
            
            alert.addAction(UIAlertAction.init(title: touplaBut.0, style: touplaBut.1, handler: { (action) in
                
                if let goTo = touplaBut.2{
                    
                    goTo()
                }
                
            }))
        }
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func addtapDismiss( inView: UIView? = nil){
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(dismissKeyboard))
        if inView == nil{
            self.view.addGestureRecognizer(tap)
        }else{
            inView?.isUserInteractionEnabled = true
            inView?.addGestureRecognizer(tap)
        }
    }
    
    func addImageToNavigationItem(_ nameImage: String, isRigthButton: Bool, goTo : Selector){
        
        let image = UIImage(named: nameImage)?.withRenderingMode(.alwaysOriginal)
        
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: goTo)
        
        if isRigthButton{
            
            
            self.navigationItem.rightBarButtonItem = button
            
        }else{
            
            self.navigationItem.leftBarButtonItem = button
        }
        
    }
    
    func addNavigationItemTitle(_ title: String, isRigthButton: Bool, goTo : Selector){
        
        let button = UIBarButtonItem(title: title, style: .plain, target: self, action: goTo)

        if isRigthButton{
            
            self.navigationItem.rightBarButtonItem = button
            
        }else{
            
            self.navigationItem.leftBarButtonItem = button
        }
        
    }
    
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
}
