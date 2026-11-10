import Foundation
import Observation

@Observable
@MainActor
final class ___VARIABLE_productName:identifier___ViewModel {

    // MARK: - State
    private(set) var entity: ___VARIABLE_productName:identifier___Entity?
    private(set) var isLoading = false
    private(set) var errorMessage: String?

    // MARK: - Dependencies
    private let useCase: ___VARIABLE_productName:identifier___UseCase

    init(useCase: ___VARIABLE_productName:identifier___UseCase? = nil) {
        self.useCase = useCase ?? ___VARIABLE_productName:identifier___UseCaseImpl(
            repository: ___VARIABLE_productName:identifier___RepositoryImpl()
        )
    }

    // MARK: - Actions
    func load() async {
        isLoading = true
        errorMessage = nil
        do {
            entity = try await useCase.execute()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}
