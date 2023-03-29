//
//  EventSection.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct EventSection: View {
    
    @Binding var events : [Event]
    
    var body: some View{
        VStack {
            HStack{
                Text("Event")
                    .font(.headline)
                Spacer()
                Button(action: {}, label: {
                    Text("See all")
                        .accentColor(.green)
                        .font(.subheadline)
                })
            }
            .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16.0) {
                    ForEach(events) { event in
                        EventSectionItemView(event: event)
                    }
                }
                .frame(maxWidth: .infinity ,minHeight: 220, maxHeight: .infinity)
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct EventSectionItemView: View {
    
    let event: Event
    
    var body: some View{
        VStack{
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment:  .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}


