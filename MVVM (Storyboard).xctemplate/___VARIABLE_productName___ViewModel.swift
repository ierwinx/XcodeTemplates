import Foundation

protocol ___VARIABLE_productName:identifier___ViewModelProtocol: AnyObject {
    var onLoadingChanged: ((Bool) -> Void)? { get set }
    var onError: ((String) -> Void)? { get set }
    var onDataChanged: (() -> Void)? { get set }

    func viewDidLoad()
}

final class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {

    // MARK: - Bindings
    var onLoadingChanged: ((Bool) -> Void)?
    var onError: ((String) -> Void)?
    var onDataChanged: (() -> Void)?

    // MARK: - State
    private(set) var model: ___VARIABLE_productName:identifier___Model? {
        didSet { onDataChanged?() }
    }

    // MARK: - Actions
    func viewDidLoad() {
        fetchData()
    }

    private func fetchData() {
        onLoadingChanged?(true)
        // TODO: llamar al servicio / repositorio
        model = ___VARIABLE_productName:identifier___Model()
        onLoadingChanged?(false)
    }
}
