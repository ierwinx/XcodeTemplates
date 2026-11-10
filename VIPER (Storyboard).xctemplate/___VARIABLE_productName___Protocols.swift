import UIKit

// MARK: - View
protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }
    func showLoading()
    func hideLoading()
    func showError(_ message: String)
}

// MARK: - Presenter
protocol ___VARIABLE_productName:identifier___PresenterProtocol: AnyObject {
    var view: ___VARIABLE_productName:identifier___ViewProtocol? { get set }
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }
    var router: ___VARIABLE_productName:identifier___RouterProtocol? { get set }

    func viewDidLoad()
}

// MARK: - Interactor
protocol ___VARIABLE_productName:identifier___InteractorInputProtocol: AnyObject {
    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol? { get set }
    func fetchData()
}

protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol: AnyObject {
    func didFetchData(_ entity: ___VARIABLE_productName:identifier___Entity)
    func didFail(with error: Error)
}

// MARK: - Router
protocol ___VARIABLE_productName:identifier___RouterProtocol: AnyObject {
    static func createModule() -> UIViewController
}
