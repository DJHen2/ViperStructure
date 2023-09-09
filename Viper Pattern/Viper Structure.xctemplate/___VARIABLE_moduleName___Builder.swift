//___FILEHEADER___

import Foundation
import UIKit

protocol ___VARIABLE_moduleName___ModuleInterface:AnyObject{
    func `default`()->UIViewController
}

final class ___VARIABLE_moduleName___Module: ViperModuleBuilder<___VARIABLE_moduleName___View,___VARIABLE_moduleName___Presenter,___VARIABLE_moduleName___Interactor,___VARIABLE_moduleName___Router>,___VARIABLE_moduleName___ModuleInterface{
    public override class func identifier()->String{
        return "___VARIABLE_moduleName___Module"
    }
    
    func `default`() -> UIViewController {
        return object.imp.view
    }
    
    deinit {
        print("___VARIABLE_moduleName___ Builder Destroyed")
    }
    
}
