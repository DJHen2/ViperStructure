//___FILEHEADER___

import Foundation


/** Presenter of the ___VARIABLE_moduleName___ Module set*/
final class ___VARIABLE_moduleName___Presenter:___VARIABLE_moduleName___PresenterProtocol{
    
    internal weak var view: ___VARIABLE_moduleName___ViewProtocol!
    internal var router: ___VARIABLE_moduleName___RouterProtocol!
    internal var interactor: ___VARIABLE_moduleName___InteractorProtocol!
    
    // - MARK: View's Interactions
    func viewDidLoad(){
        
    }
    
    deinit {
        print("___VARIABLE_moduleName___ Presenter Destroyed")
    }
}

extension ___VARIABLE_moduleName___Presenter:___VARIABLE_moduleName___InteractorOutputProtocol{
    // MARK: Interactor's Responses
}
