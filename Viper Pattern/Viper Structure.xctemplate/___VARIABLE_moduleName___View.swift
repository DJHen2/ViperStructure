//___FILEHEADER___

import Foundation
import UIKit

/** View of the ___VARIABLE_moduleName___ Module set, UIKit Dependent*/
final class ___VARIABLE_moduleName___View: UIViewController{

    internal var presenter: ___VARIABLE_moduleName___PresenterProtocol!
    
    // - MARK: IBOutlets
    
    
    // - MARK: Class Overriden Functions
    
    required convenience init() {
        self.init(nibName: "___VARIABLE_moduleName___View", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Code goes here
        
        
        
        presenter.viewDidLoad()
    }
    
    deinit {
        print("___VARIABLE_moduleName___ View Destroyed")
    }
    
    // - MARK: IBActions and User's Interaction
    
    
}


extension ___VARIABLE_moduleName___View:___VARIABLE_moduleName___ViewProtocol{
    
    // - MARK: GUI's animation and setup
    
    
    // - MARK: Data reciever
    
    
}
