//
//  SecondPresenter.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation


/** Presenter of the Second Module set*/
final class SecondPresenter:SecondPresenterProtocol{
    
    internal weak var view: SecondViewProtocol!
    internal var router: SecondRouterProtocol!
    internal var interactor: SecondInteractorProtocol!
    
    // - MARK: View's Interactions
    func viewDidLoad(){
        
    }
    
    deinit {
        print("Second Presenter Destroyed")
    }
}

extension SecondPresenter:SecondInteractorOutputProtocol{
    // MARK: Interactor's Responses
}
