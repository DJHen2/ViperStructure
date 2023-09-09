//
//  ModuleLocator.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation

class ModuleLocator {
    
    static func home() -> HomeModuleInterface{
        return HomeModule()
    }
    
    static func second() -> SecondModuleInterface{
        return SecondModule()
    }
    
}
