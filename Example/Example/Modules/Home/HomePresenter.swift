//
//  HomePresenter.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation


/** Presenter of the Home Module set*/
final class HomePresenter:HomePresenterProtocol{
    
    internal weak var view: HomeViewProtocol!
    internal var router: HomeRouterProtocol!
    internal var interactor: HomeInteractorProtocol!
    
    // - MARK: View's Interactions
    func viewDidLoad(){
        
    }
    
    deinit {
        print("Home Presenter Destroyed")
    }
    
    func goToSecond() {
        router.route(to: .second)
    }
}

extension HomePresenter:HomeInteractorOutputProtocol{
    // MARK: Interactor's Responses
}
