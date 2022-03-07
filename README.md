# NonEmptySwift

Swift Standard Library/Foundation APIs with compile-time guarantee of non-empty collections. Based on [pointfreeco/swift-non-empty](https://github.com/pointfreeco/swift-nonempty).


## Usage

### `String.components(separatedBy:)`

The `Foundation` method `components(separatedBy:)` is actually guaranteed to not be empty, because even if you call it on an empty `String`, you get `[""]` as a result. And if you pass a separator to it that doesn't exist on the `String`, you'll get back the string itself as the only element in the `Array`. This library makes that guarantee explicit by returning the result wrapped in `NonEmpty`. 

```swift
var text: String = "Ginevra,Harry,Hermione,Ronald"
var nonEmptyComponents: NonEmpty<[String]> = text.components(separatedBy: ",")
// => ["Ginevra", "Harry", "Hermione", "Ronald"]
```

## Donation

NonEmptySwift was brought to you by [Cihat Gündüz](https://github.com/Jeehut) in his free time. If you want to thank me and support the development of this project, please **make a small donation on [PayPal](https://paypal.me/Dschee/5EUR)**. In case you also like my other [open source contributions](https://github.com/Flinesoft) and [articles](https://medium.com/@Jeehut), please consider motivating me by **becoming a sponsor on [GitHub](https://github.com/sponsors/Jeehut)** or a **patron on [Patreon](https://www.patreon.com/Jeehut)**.

Thank you very much for any donation, it really helps out a lot! 💯


## Contributing

Contributions are welcome. Feel free to open an issue on GitHub with your ideas or implement an idea yourself and post a pull request. If you want to contribute code, please try to follow the same syntax and semantic in your **commit messages** (see rationale [here](http://chris.beams.io/posts/git-commit/)). Also, please make sure to add an entry to the `CHANGELOG.md` file which explains your change.


## License

This library is released under the [MIT License](http://opensource.org/licenses/MIT). See LICENSE for details.
