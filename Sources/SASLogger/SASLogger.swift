public struct Logger {
    
    public static let showPrintValue = true
       
      public enum types: String {
           case info =  "LOG"
           case warning =  "WARNING"
           case error = "ERROR"
       }
       
      public enum Component {
           case file
           case function
           case line
           
           func enabled() -> Bool {
               return Logger.components.contains(self)
           }
       }

      public static var components: [Component] = [.file,.function,.line]
       
      public static func pnt(_ msg: String,_ function: String = #function,_ line: Int = #line ) {
           
           #if DEBUG
           if showPrintValue {
               print("Func -> \(function),line -> \(line)👇 \n Result -> \(msg)")
           }
           #endif
           
       }
       
      public static func p(_ msg: String) {
           
           #if DEBUG
           if showPrintValue {
               print("\(msg)")
           }
           #endif
           
       }
    
}
