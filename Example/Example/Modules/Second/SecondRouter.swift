//
//  SecondRouter.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

/** Router of the Second Module set, UIKit Dependent*/
final class  SecondRouter:ViperRouterUIKit,SecondRouterProtocol{
    ///Routes to other viper modules defined in `SecondRoutes`
    func route(to r: SecondRoutes) {
        go { (current) -> (UIViewController?) in
            switch r{
            default:
                return UIViewController()
            }
        }
    }
    
    deinit {
        print("Second Router Destroyed")
    }
}
