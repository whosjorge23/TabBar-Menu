//
//  TabButton.swift
//  TabBar Menu
//
//  Created by Jorge Giannotta on 07/07/21.
//

import SwiftUI

struct TabButton: View {
    var image : String
    @Binding var selected : String
    var animation : Namespace.ID
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {
                selected = image
            }
        }, label: {
            VStack(alignment: .center, spacing: 12, content: {
                Image(systemName: image)
                    .font(.system(size: 25))
                    .foregroundColor(selected == image ? .white : .gray)
                
                ZStack {
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 8, height: 8, alignment: .center)
                    
                    if selected == image {
                        
                        Circle()
                            .fill(Color.white)
                            //Smooth Animation
                            .matchedGeometryEffect(id: "Tab", in: animation)
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            })
        })
    }
}


