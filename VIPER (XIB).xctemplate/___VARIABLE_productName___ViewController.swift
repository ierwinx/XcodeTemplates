import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Properties
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

    static func make() -> ___VARIABLE_productName:identifier___ViewController {
        ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: nil)
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

}

extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___ViewProtocol {

    // MARK: - ___VARIABLE_productName:identifier___ViewProtocol
    func showLoading() {
        // TODO: mostrar indicador de carga
    }

    func hideLoading() {
        // TODO: ocultar indicador de carga
    }

    func showError(_ message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

}