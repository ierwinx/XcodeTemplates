import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Properties
    var viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol = ___VARIABLE_productName:identifier___ViewModel()

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
        bindViewModel()
        viewModel.viewDidLoad()
    }

    // MARK: - Binding
    private func bindViewModel() {
        viewModel.onLoadingChanged = { [weak self] isLoading in
            DispatchQueue.main.async {
                // TODO: mostrar/ocultar loading (isLoading)
                _ = self
            }
        }
        viewModel.onError = { [weak self] message in
            DispatchQueue.main.async {
                let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self?.present(alert, animated: true)
            }
        }
        viewModel.onDataChanged = { [weak self] in
            DispatchQueue.main.async {
                // TODO: actualizar la UI
                _ = self
            }
        }
    }
}
