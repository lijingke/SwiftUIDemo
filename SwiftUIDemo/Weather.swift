//
//  Weather.swift
//  SwiftUIDemo
//
//  Created by 李京珂 on 2024/11/19.
//

import Foundation
import SwiftUI

struct Weather: Identifiable, Hashable {
  let id = UUID()
  var name: String
  var icon: String
  var temperature: Double
  
  static var mock: [Self] {
    [
      .init(name: "Sun", icon: "sun.max.fill", temperature: 32),
      .init(name: "Rain", icon: "cloud.rain.fill", temperature: 26),
      .init(name: "Snow", icon: "snowflake", temperature: -2),
    ]
  }
}
