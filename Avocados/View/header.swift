import SwiftUI
struct header: View {
    var item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(.largeTitle)
            Text(item.description)
                .font(.subheadline)
        }
        .padding()
    }
}


