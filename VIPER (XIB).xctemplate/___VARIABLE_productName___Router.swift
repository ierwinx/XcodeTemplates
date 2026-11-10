import UIKit

final class ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___RouterProtocol {

    static func createModule() -> UIViewController {
        let view = ___VARIABLE_productName:identifier___ViewController.make()
        let presenter = ___VARIABLE_productName:identifier___Presenter()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }
}
