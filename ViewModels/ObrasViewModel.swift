import Foundation
import Combine

final class ObrasViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published private(set) var obras: [ObraDeArte] = []

    private var allObras: [ObraDeArte] = []

    init() {
        allObras = ObrasData.listaDeObras
        obras = allObras
        setupSearch()
    }

    private func setupSearch() {
        $searchText
            .debounce(for: .milliseconds(200), scheduler: RunLoop.main)
            .removeDuplicates()
            .sink { [weak self] text in
                guard let self = self else { return }
                if text.isEmpty {
                    self.obras = self.allObras
                } else {
                    let lower = text.lowercased()
                    self.obras = self.allObras.filter {
                        $0.titulo.lowercased().contains(lower)
                        || $0.artista.lowercased().contains(lower)
                    }
                }
            }
            .store(in: &cancellables)
    }

    private var cancellables = Set<AnyCancellable>()
}
