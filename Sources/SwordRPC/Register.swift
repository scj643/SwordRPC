//
//  Register.swift
//  SwordRPC
//
//  Created by Alejandro Alonso
//  Copyright © 2017 Alejandro Alonso. All rights reserved.
//

import Foundation

#if !os(Linux)
import CoreServices
#else
import Glibc
#endif

extension SwordRPC {
  
  func createFile(_ name: String, at path: String, with data: String) {
    let fm = FileManager.default
    
    try? fm.createDirectory(
      atPath: NSHomeDirectory() + path,
      withIntermediateDirectories: true,
      attributes: nil
    )
    
    fm.createFile(
      atPath: path + "/" + name,
      contents: data.data(using: .utf8),
      attributes: nil
    )
  }
}
