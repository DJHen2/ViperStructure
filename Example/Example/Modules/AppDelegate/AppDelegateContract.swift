//
//  AppDelegateContract.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

// - MARK: Contract

protocol AppDelegateInteractorProtocol{

}

protocol AppDelegateRouterProtocol{
    mutating func route(to:AppDelegateRoutes)
}

// - MARK: Contract Enums

enum AppDelegateRoutes{
    case home
}
