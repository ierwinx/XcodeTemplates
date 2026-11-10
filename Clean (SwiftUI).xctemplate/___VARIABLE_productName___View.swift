import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {

    @State private var viewModel = ___VARIABLE_productName:identifier___ViewModel()

    var body: some View {
        VStack(spacing: 16) {
            if viewModel.isLoading {
                ProgressView()
            } else if let message = viewModel.errorMessage {
                Text(message)
            } else if let entity = viewModel.entity {
                Text(entity.title)
                    .font(.title)
            }
        }
        .padding()
        .task { await viewModel.load() }
    }
}

#Preview {
    ___VARIABLE_productName:identifier___View()
}
