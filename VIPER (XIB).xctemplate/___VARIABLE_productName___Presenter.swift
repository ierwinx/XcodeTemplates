import Foundation

final class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol {

    weak var view: ___VARIABLE_productName:identifier___ViewProtocol?
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol?
    var router: ___VARIABLE_productName:identifier___RouterProtocol?

    func viewDidLoad() {
        view?.showLoading()
        interactor?.fetchData()
    }
}

// MARK: - ___VARIABLE_productName:identifier___InteractorOutputProtocol
extension ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol {

    func didFetchData(_ entity: ___VARIABLE_productName:identifier___Entity) {
        view?.hideLoading()
        // TODO: formatear la entidad y pasarla a la vista
    }

    func didFail(with error: Error) {
        view?.hideLoading()
        view?.showError(error.localizedDescription)
    }
}
