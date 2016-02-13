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
    return self.componentsSeparatedByString(" ")
  }
}

extension SequenceType where Generator.Element == String {
  /// Returns a string by inserting a single blank space between members.
  public func unwords() -> String {
    return self.joinWithSeparator(" ")
  }
}


/// Outputs a solution to the standard output in the required format.
///
/// - Parameters:
///   - n:      The case number
///   - output: The solution. This can either be a String or a closure.
///
/// - Returns: A string in the form `Case #<n>: <solution>`
public func printCase(n: Int, @autoclosure output: () -> String) {
  print("Case #\(n): " + output())
}



