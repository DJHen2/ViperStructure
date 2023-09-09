//
//  HomeContract.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

// - MARK: Contract

protocol HomeViewProtocol:ViperView{
    var presenter: HomePresenterProtocol!{get set}
}

protocol HomePresenterProtocol:ViperPresenter{
    var view:HomeViewProtocol!{get set}
    var router: HomeRouterProtocol!{set get}
    var interactor: HomeInteractorProtocol!{set get}

    func viewDidLoad()
    func goToSecond()
}

protocol HomeInteractorProtocol:ViperInteractor{
    var output: HomeInteractorOutputProtocol!{get set}
}

protocol HomeInteractorOutputProtocol:AnyObject{

}

protocol HomeRouterProtocol:ViperRouter{
    func route(to:HomeRoutes)
}

// - MARK: Contract Enums

enum HomeRoutes{
    case second
}


//DONT TOUCH THESE PLEASE

extension HomeViewProtocol{
    func set(_ presenter: ViperPresenter) {
        self.presenter = presenter as? HomePresenterProtocol
    }
}

extension HomePresenterProtocol{
    func set(_ view:ViperView){
        self.view = view as? HomeViewProtocol
    }
    func set(_ router:ViperRouter){
        self.router = router as? HomeRouterProtocol
    }
    func set(_ interactor:ViperInteractor){
        self.interactor = interactor as? HomeInteractorProtocol
    }
}

extension HomeInteractorProtocol{
    func set(_ output:ViperPresenter){
        self.output = output as? HomeInteractorOutputProtocol
    }
}

