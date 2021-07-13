//
//  Home.swift
//  TabBar Menu
//
//  Created by Jorge Giannotta on 09/07/21.
//

import SwiftUI

struct Home: View {
    var animation : Namespace.ID
    var body: some View {
        VideoView(videoID: "VS6tnF31zr4")
            .frame(minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: UIScreen.main.bounds.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
