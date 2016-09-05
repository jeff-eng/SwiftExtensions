# SwiftExtensions
Repo following Project 24: Swift Extensions at Hacking with Swift

## Concepts Learned/Practiced
* Swift Extensions - adding functionality to existing types
  * Extensions provide extensibility and work across all data types
  * Using the keyword 'static' on your method definition to extend a data type
    * Example:
    ```Swift
    extension UIColor {
      static func salmonColor() -> UIColor {
        return UIColor(red: 1.00, green: 0.63, blue: 0.48, alpha: 1.0)
      }
    }
    ```
* Parameter names
  * External and internal parameter names
    * External parameter name is the named parameter used in a function/method call
    * Internal parameter name is the named parameter used in the function/method definition
  * Require name of parameter(s) in function calls
    * Example:

    ```Swift
    func RandomInt(min min: Int, max: Int) -> Int {
      if max < min { return min }
      return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
    ```

  * Use different external parameter names from internal parameter names
    * Example:

    ```Swift
    func RandomInt(minimum min: Int, maximum max: Int) -> Int {
      if max < min { return min }
      return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
    ```

* Declaring method as ```mutating```, which allows changing of variable values, making them "mutable"
  * Example:

  ```Swift
  extension Int {
    mutating func plusOne() {
      self += 1
    }
  }
  ```
