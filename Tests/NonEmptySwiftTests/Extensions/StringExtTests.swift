import XCTest
import NonEmpty
@testable import NonEmptySwift

final class StringExtTests: XCTestCase {
  func componentsSeparatedByStringProtocol() {
    var text: String = "Ginevra,Harry,Hermione,Ronald"
    var nonEmptyComponents: NonEmpty<[String]> = text.components(separatedBy: ",")
    XCTAssertEqual(nonEmptyComponents.rawValue, ["Ginevra", "Harry", "Hermione", "Ronald"])

    text = "Hello world!"
    nonEmptyComponents = text.components(separatedBy: ",")
    XCTAssertEqual(nonEmptyComponents.rawValue, ["Hello world!"])

    text = ""
    nonEmptyComponents = text.components(separatedBy: ",")
    XCTAssertEqual(nonEmptyComponents.rawValue, [""])
  }

  func componentsSeparatedByCharacterSet() {
    var text: String = "Ginevra\nHarry\nHermione\nRonald"
    var nonEmptyComponents: NonEmpty<[String]> = text.components(separatedBy: .newlines)
    XCTAssertEqual(nonEmptyComponents.rawValue, ["Ginevra", "Harry", "Hermione", "Ronald"])

    text = "Hello world!"
    nonEmptyComponents = text.components(separatedBy: .newlines)
    XCTAssertEqual(nonEmptyComponents.rawValue, ["Hello world!"])

    text = ""
    nonEmptyComponents = text.components(separatedBy: .newlines)
    XCTAssertEqual(nonEmptyComponents.rawValue, [""])
  }
}
