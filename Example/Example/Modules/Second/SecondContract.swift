//
//  SecondContract.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

// - MARK: Contract

protocol SecondViewProtocol:ViperView{
    var presenter: SecondPresenterProtocol!{get set}
}

protocol SecondPresenterProtocol:ViperPresenter{
    var view:SecondViewProtocol!{get set}
    var router: SecondRouterProtocol!{set get}
    var interactor: SecondInteractorProtocol!{set get}

    func viewDidLoad()
}

protocol SecondInteractorProtocol:ViperInteractor{
    var output: SecondInteractorOutputProtocol!{get set}
}

protocol SecondInteractorOutputProtocol:AnyObject{

}

protocol SecondRouterProtocol:ViperRouter{
    func route(to:SecondRoutes)
}

// - MARK: Contract Enums

enum SecondRoutes{
    
}


//DONT TOUCH THESE PLEASE

extension SecondViewProtocol{
    func set(_ presenter: ViperPresenter) {
        self.presenter = presenter as? SecondPresenterProtocol
    }
}

extension SecondPresenterProtocol{
    func set(_ view:ViperView){
        self.view = view as? SecondViewProtocol
    }
    func set(_ router:ViperRouter){
        self.router = router as? SecondRouterProtocol
    }
    func set(_ interactor:ViperInteractor){
        self.interactor = interactor as? SecondInteractorProtocol
    }
}

extension SecondInteractorProtocol{
    func set(_ output:ViperPresenter){
        self.output = output as? SecondInteractorOutputProtocol
    }
}

