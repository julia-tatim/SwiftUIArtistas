import SwiftUI

struct HomeView: View {
    @StateObject private var vm = ObrasViewModel()
    let columns = [ GridItem(.adaptive(minimum: 150), spacing: 16) ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(vm.obras) { obra in
                        NavigationLink {
                            DetalhesObraView(obra: obra)
                        } label: {
                            ObraCellView(obra: obra)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Artistas Curitibanos")
            .searchable(text: $vm.searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "Busque por título ou artista")
        }
    }
}
