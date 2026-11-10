import Foundation

final class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol {

    weak var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol?

    func fetchData() {
        // TODO: llamar al servicio / repositorio
        presenter?.didFetchData(___VARIABLE_productName:identifier___Entity())
    }
}
