import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {

    @State private var viewModel = ___VARIABLE_productName:identifier___ViewModel()

    var body: some View {
        VStack(spacing: 16) {
            Text(viewModel.title)
                .font(.title)
            Text("\(viewModel.counter)")
            Button("Incrementar") {
                viewModel.increment()
            }
        }
        .padding()
    }
}

#Preview {
    ___VARIABLE_productName:identifier___View()
}
