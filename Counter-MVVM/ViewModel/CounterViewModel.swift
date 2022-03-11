import Combine

final class CounterViewModel: ObservableObject {
    @Published var count: Int = 0
}
