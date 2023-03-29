//
//  MenuSuggestionSection.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct MenuSuggestionSection: View {
    
    @Binding var coffeeMenu: [CoffeMenu]
    
    var body: some View {
        VStack {
            Text("\(User.shared.username)님을 위한 추천 메뉴")
                .font(.headline)
                .frame(maxWidth:.infinity, alignment:  .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu) { menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
        //.padding(.horizontal, 16.0)
    }
}

struct MenuSuggestionItemView: View {
    
    let coffeeMenu: CoffeMenu
    
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

