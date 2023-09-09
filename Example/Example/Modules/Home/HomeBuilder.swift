//
//  HomeBuilder.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

protocol HomeModuleInterface:AnyObject{
    func `default`()->UIViewController
}

final class HomeModule: ViperModuleBuilder<HomeView,HomePresenter,HomeInteractor,HomeRouter>,HomeModuleInterface{
    public override class func identifier()->String{
        return "HomeModule"
    }
    
    func `default`() -> UIViewController {
        return object.imp.view
    }
    
    deinit {
        print("Home Builder Destroyed")
    }
    
}
