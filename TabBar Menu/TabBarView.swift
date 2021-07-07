//
//  TabBarView.swift
//  TabBar Menu
//
//  Created by Jorge Giannotta on 07/07/21.
//

import SwiftUI
import SwiftHEXColors

struct TabBarView: View {
    @State var currentTab = "house"
    @Namespace var animation
    init() {
        //Hide default tab bar
        UITabBar.appearance().isHidden = true
    }
    //Safe areas values
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var tabs = ["house", "book", "suit.heart", "person"]
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection: $currentTab,
                    content:  {
                        Text("House")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .tag(tabs[0])
                            .background(Color(#colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1)).ignoresSafeArea())
                        Text("Booking")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .tag(tabs[1])
                            .background(Color(#colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1)).ignoresSafeArea())
                        Text("Favorite")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .tag(tabs[2])
                            .background(Color(#colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1)).ignoresSafeArea())
                        Text("Profile")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .tag(tabs[3])
                            .background(Color(#colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1)).ignoresSafeArea())
                    })
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 35, content: {
                ForEach(tabs, id: \.self) {image in
                    TabButton(image: image, selected: $currentTab, animation: animation)
                }
            })
            .padding(.horizontal, 35)
            .padding(.top)
            .padding(.bottom, safeArea?.bottom != 0 ? safeArea?.bottom : 15)
            .background(LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.2082854211, green: 0.2843391895, blue: 0.3764083385, alpha: 1)), Color(#colorLiteral(red: 0.1762744784, green: 0.2414814532, blue: 0.3204131126, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(CustomCorners(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight]))
        })
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
