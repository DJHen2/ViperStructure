//
//  HomeRouter.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

/** Router of the Home Module set, UIKit Dependent*/
final class  HomeRouter:ViperRouterUIKit,HomeRouterProtocol{
    ///Routes to other viper modules defined in `HomeRoutes`
    func route(to r: HomeRoutes) {
        go { (current) -> (UIViewController?) in
            switch r{
            case .second:
                current?.navigationController?.pushViewController(ModuleLocator.second().default(), animated: true)
            }
            return nil
        }
    }
    
    deinit {
        print("Home Router Destroyed")
    }
}
