//
//  HomeViewModel.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/29.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeddToReload = false {
        didSet {
            guard isNeddToReload else { return }
        
            coffeeMenu.shuffle()
            events.shuffle()
                
            isNeddToReload = false
            
        }
    }
    
    @Published var coffeeMenu: [CoffeMenu] = [
        CoffeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeMenu(image: Image("coffee"), name: "아이스 드립커피"),
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴가 출시 되었습니다."),
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름 한정 메뉴가 출시 되었습니다.")
    ]
    
}
