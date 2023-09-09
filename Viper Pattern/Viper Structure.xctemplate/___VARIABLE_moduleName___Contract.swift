//___FILEHEADER___

import Foundation

// - MARK: Contract

protocol ___VARIABLE_moduleName___ViewProtocol:ViperView{
    var presenter: ___VARIABLE_moduleName___PresenterProtocol!{get set}
}

protocol ___VARIABLE_moduleName___PresenterProtocol:ViperPresenter{
    var view:___VARIABLE_moduleName___ViewProtocol!{get set}
    var router: ___VARIABLE_moduleName___RouterProtocol!{set get}
    var interactor: ___VARIABLE_moduleName___InteractorProtocol!{set get}

    func viewDidLoad()
}

protocol ___VARIABLE_moduleName___InteractorProtocol:ViperInteractor{
    var output: ___VARIABLE_moduleName___InteractorOutputProtocol!{get set}
}

protocol ___VARIABLE_moduleName___InteractorOutputProtocol:AnyObject{

}

protocol ___VARIABLE_moduleName___RouterProtocol:ViperRouter{
    func route(to:___VARIABLE_moduleName___Routes)
}

// - MARK: Contract Enums

enum ___VARIABLE_moduleName___Routes{
    
}


//DONT TOUCH THESE PLEASE

extension ___VARIABLE_moduleName___ViewProtocol{
    func set(_ presenter: ViperPresenter) {
        self.presenter = presenter as? ___VARIABLE_moduleName___PresenterProtocol
    }
}

extension ___VARIABLE_moduleName___PresenterProtocol{
    func set(_ view:ViperView){
        self.view = view as? ___VARIABLE_moduleName___ViewProtocol
    }
    func set(_ router:ViperRouter){
        self.router = router as? ___VARIABLE_moduleName___RouterProtocol
    }
    func set(_ interactor:ViperInteractor){
        self.interactor = interactor as? ___VARIABLE_moduleName___InteractorProtocol
    }
}

extension ___VARIABLE_moduleName___InteractorProtocol{
    func set(_ output:ViperPresenter){
        self.output = output as? ___VARIABLE_moduleName___InteractorOutputProtocol
    }
}

