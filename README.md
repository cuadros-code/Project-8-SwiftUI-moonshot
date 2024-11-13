# Moonshot

### Resizing images to fit the available space 

```swift
Image(.colombia)
    .resizable()
    .scaledToFit()
    .containerRelativeFrame(.horizontal) { size, axis in
        size * 0.8
    }
```

