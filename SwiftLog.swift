//
//  SwiftLog.swift
//  Swift2
//
//  Created by Inder Kumar Rathore on 07/10/15.
//  Copyright © 2015 Inder Kumar Rathore. All rights reserved.
//
// Have an issue? Please visit : https://github.com/InderKumarRathore/SwiftLog
// and file a bug

import Foundation

/// Logs the message to the console with extra information, e.g. file name, method name and line number
///
/// To make it work you must set the "DEBUG" symbol, set it in the "Swift Compiler - Custom Flags" section, "Other Swift Flags" line.
/// You add the DEBUG symbol with the -D DEBUG entry.
public func debugLog(object: Any, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
  #if DEBUG
    let className = (fileName as NSString).lastPathComponent
    print("<\(className)> \(functionName) [#\(lineNumber)]| \(object)\n")
  #endif
}
