//
//  HomeView.swift
//  Example
//
//  Created by Henry Marval on 9/9/23.
//

import Foundation
import UIKit

/** View of the Home Module set, UIKit Dependent*/
final class HomeView: UIViewController{

    internal var presenter: HomePresenterProtocol!
    
    // - MARK: IBOutlets
    
    
    // - MARK: Class Overriden Functions
    
    required convenience init() {
        self.init(nibName: "HomeView", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Code goes here
        
        
        
        presenter.viewDidLoad()
    }
    
    deinit {
        print("Home View Destroyed")
    }
    
    // - MARK: IBActions and User's Interaction
    @IBAction func nextAction(_ sender: Any) {
        presenter.goToSecond()
    }
    
    
}


extension HomeView:HomeViewProtocol{
    
    // - MARK: GUI's animation and setup
    
    
    // - MARK: Data reciever
    
    
}
