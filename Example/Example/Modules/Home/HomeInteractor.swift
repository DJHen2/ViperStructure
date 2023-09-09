//
//  HomeInteractor.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

/** Interactor of the Home Module set*/
final class HomeInteractor:HomeInteractorProtocol{
    //Bussiness logic goes here
    
    weak var output: HomeInteractorOutputProtocol!
    
    required init(){}
    
    deinit {
        print("Home Interactor Destroyed")
    }
}

