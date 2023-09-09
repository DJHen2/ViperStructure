//
//  SecondInteractor.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

/** Interactor of the Second Module set*/
final class SecondInteractor:SecondInteractorProtocol{
    //Bussiness logic goes here
    
    weak var output: SecondInteractorOutputProtocol!
    
    required init(){}
    
    deinit {
        print("Second Interactor Destroyed")
    }
}

