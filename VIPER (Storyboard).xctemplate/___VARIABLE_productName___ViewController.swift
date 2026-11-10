import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

    static func make() -> ___VARIABLE_productName:identifier___ViewController {
        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___ViewController") as? ___VARIABLE_productName:identifier___ViewController else {
            fatalError("No se pudo instanciar ___VARIABLE_productName:identifier___ViewController desde ___VARIABLE_productName:identifier___.storyboard")
        }
        return vc
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