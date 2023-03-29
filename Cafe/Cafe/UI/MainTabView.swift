//
//  MainTabView.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
            TabView {
                HomeVIew()
                    .tabItem {
                        Tab.home.imageItem
                        Tab.home.tabTextItem
                    }
                OtherView()
                    .tabItem {
                        Tab.other.imageItem
                        Tab.other.tabTextItem
                    }
            }
        
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
