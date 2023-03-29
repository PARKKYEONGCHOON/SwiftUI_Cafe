//
//  HomeVIew.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct HomeVIew:View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View{
        ScrollView(.vertical) {
            HomeHeaderVIew(isNeedToReload: $viewModel.isNeddToReload)
            MenuSuggestionSection(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            EventSection(events: $viewModel.events)
        }
    }
}

struct HomeVIew_Preview: PreviewProvider{
    static var previews: some View {
        HomeVIew()
    }
}
