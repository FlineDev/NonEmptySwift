import Foundation
import NonEmpty

extension String {
  @_disfavoredOverload
  func components<T: StringProtocol>(separatedBy separator: T) -> NonEmpty<[String]> {
    .init(rawValue: self.components(separatedBy: separator))!
  }

  @_disfavoredOverload
  func components(separatedBy separator: CharacterSet) -> NonEmpty<[String]> {
    .init(rawValue: self.components(separatedBy: separator))!
  }
}
