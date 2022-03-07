import Foundation
import NonEmpty

extension String {
  /// Returns a collection that guarantees to not be empty.
  /// /// - Parameter separator: The separator to separate the String by.
  /// - Returns: A collection that guarantees to not be empty.
  @_disfavoredOverload
  public func components<T: StringProtocol>(separatedBy separator: T) -> NonEmpty<[String]> {
    .init(rawValue: self.components(separatedBy: separator))!
  }

  /// Returns a collection that guarantees to not be empty.
  /// - Parameter separator: The separator character set to separate the String by.
  /// - Returns: A collection that guarantees to not be empty.
  @_disfavoredOverload
  public func components(separatedBy separator: CharacterSet) -> NonEmpty<[String]> {
    .init(rawValue: self.components(separatedBy: separator))!
  }
}
