//
//  SecondBuilder.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

protocol SecondModuleInterface:AnyObject{
    func `default`()->UIViewController
}

final class SecondModule: ViperModuleBuilder<SecondView,SecondPresenter,SecondInteractor,SecondRouter>,SecondModuleInterface{
    public override class func identifier()->String{
        return "SecondModule"
    }
    
    func `default`() -> UIViewController {
        return object.imp.view
    }
    
    deinit {
        print("Second Builder Destroyed")
    }
    
}
