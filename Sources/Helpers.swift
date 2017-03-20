import Foundation

/// Reads an `Int` from the standard input.
///
/// There is no error checking. If an `Int` cannot be read an exception is thrown.
public func readInt() -> Int {
  guard let s = readLine(), let i = Int(s) else { fatalError() }
  return i
}

/// Reads a string of space separated numbers from the standard input and returns `[Int]`.
///
/// There is no error checking. If an `[Int]` cannot be read an exception is thrown.
public func readInts() -> [Int] {
  guard let s = readLine() else { fatalError() }

  return s.words().map{ Int($0) }.flatMap { $0 }

}

extension String {
  /// Splits a string into words on a single blank space.
  public func words() -> [String] {
    return self.components(separatedBy: " ")
  }
}

extension Sequence where Iterator.Element == String {
  /// Returns a string by inserting a single blank space between members.
  public func unwords() -> String {
    return self.joined(separator: " ")
  }
}

/// Outputs the solution to the Standard Output in the required format.
///
/// - Parameters:
///   - n: The case number.
///   - output: The solution. This could either be a String value or a closure that evaluates to a String.
public func printCase(_ n: Int, output: @autoclosure () -> String) {
  print("Case #\(n): " + output())
}



