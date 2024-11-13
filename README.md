# Moonshot

- LazyVStack 
- NavigationLink
- LazyVGrid
- GridItem

### Resizing images to fit the available space 

```swift
Image(.colombia)
    .resizable()
    .scaledToFit()
    .containerRelativeFrame(.horizontal) { size, axis in
        size * 0.8
    }
```
---

### How ScrollView lets us work with scrolling data


```swift
import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating a CustomText")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText( text: "Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
```
---

### Pushing new views onto the stack using NavigationLink

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is a label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
            }
            
            .navigationTitle("SwiftUI")
        }
    }
}
```
---

### Working with hierarchical Codable data

```swift 
import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555, Taylor Swift Avenue",
                        "city": "Nashville"
                    }
                }
                """
            
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}
```
---

### How to lay out views in a scrolling grid

```swift
import SwiftUI


struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}
```
