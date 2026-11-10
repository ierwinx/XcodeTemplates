import Foundation

protocol ___VARIABLE_productName:identifier___UseCase: Sendable {
    func execute() async throws -> ___VARIABLE_productName:identifier___Entity
}

struct ___VARIABLE_productName:identifier___UseCaseImpl: ___VARIABLE_productName:identifier___UseCase {

    private let repository: ___VARIABLE_productName:identifier___Repository

    init(repository: ___VARIABLE_productName:identifier___Repository) {
        self.repository = repository
    }

    func execute() async throws -> ___VARIABLE_productName:identifier___Entity {
        // Reglas de negocio aquí
        try await repository.fetch()
    }
}
