import SwiftUI

struct ObraCellView: View {
    let obra: ObraDeArte

    var body: some View {
        VStack {
            Image(systemName: obra.imagemNome)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 2)
            Text(obra.titulo)
                .font(.subheadline).bold()
                .lineLimit(1)
            Text(obra.artista)
                .font(.caption)
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .padding(4)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .animation(.easeInOut, value: obra.id)  
    }
}
