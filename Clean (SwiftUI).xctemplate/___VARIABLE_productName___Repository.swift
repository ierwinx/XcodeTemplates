import Foundation

/// Contrato del repositorio. Vive en Domain; la implementación vive en Data.
protocol ___VARIABLE_productName:identifier___Repository: Sendable {
    func fetch() async throws -> ___VARIABLE_productName:identifier___Entity
}
