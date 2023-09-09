//
//  AppDelegateRouter.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

/** Router of the AppDelegate Module set, UIKit Dependent*/
final class AppDelegateRouter:ViperRouterUIKit,AppDelegateRouterProtocol{
    func route(to r: AppDelegateRoutes){
        go { (current) -> (UIViewController?) in
            switch r{
            case .home:
                return UINavigationController.init(rootViewController: ModuleLocator.home().default() )
            
            }
            return nil
        }
    }
}
