//
//  SecondView.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

/** View of the Second Module set, UIKit Dependent*/
final class SecondView: UIViewController{

    internal var presenter: SecondPresenterProtocol!
    
    // - MARK: IBOutlets
    
    
    // - MARK: Class Overriden Functions
    
    required convenience init() {
        self.init(nibName: "SecondView", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Code goes here
        
        
        
        presenter.viewDidLoad()
    }
    
    deinit {
        print("Second View Destroyed")
    }
    
    // - MARK: IBActions and User's Interaction
    
    
}


extension SecondView:SecondViewProtocol{
    
    // - MARK: GUI's animation and setup
    
    
    // - MARK: Data reciever
    
    
}
