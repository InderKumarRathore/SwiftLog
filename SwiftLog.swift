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
public func debugLog(message: String, functionName: String = __FUNCTION__, fileName: String = __FILE__, lineNumber: Int = __LINE__) {
  #if DEBUG
    let className = (fileName as NSString).lastPathComponent
    print("<\(className)> \(functionName) [#\(lineNumber)]| \(message)")
  #endif
}