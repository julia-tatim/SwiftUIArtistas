# SwiftUIArtista

## Descrição

SwiftUIArtista é um aplicativo iOS desenvolvido em SwiftUI que apresenta uma galeria de arte interativa focada em artistas de Curitiba. Utiliza `LazyVGrid` para exibir obras de arte locais de forma responsiva, permite busca por título ou artista e oferece compartilhamento via sistema iOS.

## Estrutura de Pastas

```
SwiftUIArtista/
├─ Models/
│   └─ ObraDeArte.swift      # Define a struct ObraDeArte
├─ Data/
│   └─ ObrasData.swift       # Fonte estática de dados de obras
├─ ViewModels/
│   └─ ObrasViewModel.swift  # Gerencia lista de obras e lógica de busca
├─ Views/
│   ├─ ObraCellView.swift    # Célula do grid com imagem, título e artista
│   ├─ HomeView.swift        # Grid adaptativo com pesquisa e navegação
│   └─ DetalhesObraView.swift# Tela de detalhes e compartilhamento
├─ Support/
│   └─ ShareSheet.swift      # Wrapper de UIActivityViewController
└─ SwiftUIArtista.swift      # Ponto de entrada do SwiftUI
```

## Funcionalidades

* Exibição responsiva de obras em grid adaptável
* Tela de detalhes com informações completas (título, artista, ano, estilo e descrição)
* Compartilhamento de obra via `UIActivityViewController`
* Barra de pesquisa integrada para filtrar obras por título ou artista
* Animações sutis na apresentação das células do grid

## Requisitos

* iOS 15.0 ou superior
* Xcode 13 ou superior
* Swift 5.5 ou superior

## Como Executar

1. Clone o repositório:

   ```bash
   git clone <URL-DO-SEU-REPOSITORIO>
   cd SwiftUIArtista
   ```
2. Abra o projeto no Xcode:

   ```bash
   open SwiftUIArtista.xcodeproj
   ```
3. Selecione um simulador ou dispositivo real e clique em Run.
