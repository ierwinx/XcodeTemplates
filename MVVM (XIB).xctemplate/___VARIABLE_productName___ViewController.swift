import UIKit

final class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Properties
    var viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol = ___VARIABLE_productName:identifier___ViewModel()

    static func make() -> ___VARIABLE_productName:identifier___ViewController {
        ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: nil)
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
