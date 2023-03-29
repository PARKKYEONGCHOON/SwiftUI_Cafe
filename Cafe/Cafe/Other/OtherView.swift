//
//  OtherView.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/29.
//

import SwiftUI

struct OtherView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View{
        NavigationView {
            List{
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(
                                raw,
                                destination:{
                                    Text("\(raw)")
                                }
                            )
                        }
                    }
                        
                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar{
                    NavigationLink(
                        destination: SettingView(),
                        label: {
                            Image(systemName: "gear")
                        })
                }
        }
    }
}


struct OtherView_Preview: PreviewProvider {
    static var previews: some View{
        OtherView()
    }
}
