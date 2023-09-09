
import Foundation
import UIKit
class ViperModuleBuilder<View:ViperView,Presenter:ViperPresenter,Interactor:ViperInteractor,Router:ViperRouter>{
    
    open class func identifier()->String{
        return "Default Identifier"
    }
    
    final class AbstractModule:ViperModuleProtocol{
        
        fileprivate(set) var interactor: ViperInteractor!{
            get{
                return imp.interactor
            }
            set{
                imp.interactor = newValue as? Interactor
            }
        }
        fileprivate(set) var presenter: ViperPresenter!{
            get{
                return imp.presenter
            }
            set{
                imp.presenter = newValue as? Presenter
            }
        }
        fileprivate(set) var router: ViperRouter!{
            get{
                return imp.router
            }
            set{
                imp.router = newValue as? Router
                imp.router.set(module: self)
            }
        }
        fileprivate(set) var view: ViperView!{
            get{
                return imp.view
            }
            set{
                imp.view = newValue as? View
            }
        }
        
        lazy var imp:ViperModuleBuilder<View,Presenter,Interactor,Router>.Module =
             ViperModuleBuilder<View,Presenter,Interactor,Router>.Module.init()
        
        var identifier:String{
            return ViperModuleBuilder<View,Presenter,Interactor,Router>.identifier()
        }
    }
    
    final class Module{
        fileprivate(set) var interactor: Interactor!
        fileprivate(set) var presenter: Presenter!
        fileprivate(set) var router: Router!
        fileprivate(set) var view: View!
    }
    
    var object:AbstractModule = {
        let interactor = Interactor.init()
        let view = View.init()
            
        let presenter = Presenter.init()
        let router = Router.init()
            
        presenter.set(interactor)
        presenter.set(router)
        presenter.set(view)
        view.set(presenter)
        interactor.set(presenter)
        
        let module = AbstractModule()
        module.interactor = interactor
        module.presenter = presenter
        module.view = view
        module.router = router
        
        return module
    }()
}

protocol ViperModuleProtocol:AnyObject{
    var interactor:ViperInteractor!{get}
    var presenter:ViperPresenter!{get}
    var router:ViperRouter!{get}
    var view:ViperView!{get}
    
    var identifier:String{get}
}

protocol ViperInteractor:AnyObject{
     init()
    func set(_ output:ViperPresenter)
}

protocol ViperPresenter:AnyObject{
    init()
    func set(_ view:ViperView)
    func set(_ router:ViperRouter)
    func set(_ interactor:ViperInteractor)
}

protocol ViperView:AnyObject{
    init()
    func set(_ presenter:ViperPresenter)
    func showAlert(title: String?, message: String?,style: UIAlertController.Style, buttons: [(title:String,style: UIAlertAction.Style,action:(()->())?)], then: (()->())?)
    func showAlert(_ alert: UIAlertController, animated: Bool)
}
extension ViperView{
    func showAlert(title: String?, message: String?,style: UIAlertController.Style = .alert, buttons: [(title:String,style: UIAlertAction.Style,action:(()->())?)] = [], then: (()->())?){
        showAlert(title: title, message: message,style: style, buttons: buttons, then: then)
    }
}

protocol ViperRouter:AnyObject{
    init()
    func set(module:ViperModuleProtocol)
    func pop(animated: Bool)
    func popRoot(animated: Bool)
    func dismiss(animated: Bool, completion: (() -> ())?)
    func dismiss(animated: Bool)
}
