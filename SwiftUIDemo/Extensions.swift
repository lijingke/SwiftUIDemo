//
//  Extensions.swift
//  SwiftUIDemo
//
//  Created by 李京珂 on 2024/11/19.
//

import Foundation
import SwiftUI

extension Double {
  
  var celsiusFormat: String {
    Measurement(value: self, unit: UnitTemperature.celsius).formatted()
  }
}

extension View {
  
  @ViewBuilder func `if`<Content: View>(
    _ condition: Bool,
    apply transform: (Self) -> Content,
    else elseTransform: ((Self) -> Content)? = nil
  ) -> some View {
    if condition {
      transform(self)
    } else {
      if let elseTransform {
        elseTransform(self)
      } else {
        self
      }
    }
  }
}

extension Bool {
  static var iOS16_4: Bool {
    guard #available(iOS 16.4, *) else { return true }
    return false
  }
}
