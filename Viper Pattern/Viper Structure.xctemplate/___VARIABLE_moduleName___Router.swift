//___FILEHEADER___

import Foundation
import UIKit

/** Router of the ___VARIABLE_moduleName___ Module set, UIKit Dependent*/
final class  ___VARIABLE_moduleName___Router:ViperRouterUIKit,___VARIABLE_moduleName___RouterProtocol{
    ///Routes to other viper modules defined in `___VARIABLE_moduleName___Routes`
    func route(to r: ___VARIABLE_moduleName___Routes) {
        go { (current) -> (UIViewController?) in
            switch r{
            default:
                return UIViewController()
            }
        }
    }
    
    deinit {
        print("___VARIABLE_moduleName___ Router Destroyed")
    }
}
