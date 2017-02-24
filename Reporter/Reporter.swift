public enum Reporter {
    /**
     Report message for unrecoverable error condition and immediately exit application.
     
     Use when the error prevents the user from using the app. i.e. Could not load database.
     */
    public static func fatalError(
        _ message: @autoclosure () -> String,
        file: StaticString = #file,
        line: UInt = #line) -> Never
    {
        Swift.fatalError(message, file: file, line: line)
    }
    
    /**
     Report message for non fatal error condition which represents a serious programming error.
     
     Use when the error is a serious programming error but will not inevitably crash the app. i.e. Nil Storyboard segue identifier when all segues should have an identifier.
     */
    
    // Not working when imported as framework via Carthage. Presumably because they are build as release.
    
//    public static func assertionFailure(
//        _ message: @autoclosure () -> String,
//        file: StaticString = #file,
//        line: UInt = #line)
//    {
//        Swift.assertionFailure(message, file: file, line: line)
//    }
    
    /**
     Report message for recoverable error condition.
     
     Use when the error is a sign of a real problem which needs to be fixed but does not prevent the user from using the app. i.e. Could not cast to a required type.
     */
    public static func recoverableError(
        _ message: String,
        file: StaticString = #file,
        line: UInt = #line)
    {
        print("\(file), \(line): \(message)")
    }
    
    /**
     Record message for normal part of application flow.
     
     Use for debugging. i.e. Returning early from a function when a condition is not met.
     */
    public static func log(
        _ message: String,
        file: StaticString = #file,
        line: UInt = #line)
    {
        print("\(file), \(line): \(message)")
    }
}
