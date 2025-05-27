import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte
    @State private var isSharing = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(systemName: obra.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(12)
                    .padding(.bottom)

                Group {
                    Text(obra.titulo).font(.title).bold().multilineTextAlignment(.center)
                    Text(obra.artista).font(.headline).foregroundColor(.secondary)
                    HStack {
                        Text("\(obra.ano)").font(.subheadline)
                        Spacer()
                        Text(obra.estilo).font(.subheadline)
                    }
                }
                .frame(maxWidth: .infinity)

                Divider()

                Text(obra.descricao).font(.body)

                Button {
                    isSharing = true
                } label: {
                    Label("Compartilhar", systemImage: "square.and.arrow.up")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("Detalhes")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isSharing) {
            let texto = """
            Confira esta obra de arte curitibana:

            \(obra.titulo)
            por \(obra.artista)

            \(obra.descricao)

            #ArtistasCuritibanos #CulturaParanaense
            """
            ShareSheet(activityItems: [texto, UIImage(systemName: obra.imagemNome) ?? UIImage()])
        }
    }
}
