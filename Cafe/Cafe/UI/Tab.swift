//
//  Tab.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    var tabTextItem: Text {
        switch self {
        case .home: return Text("home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
