//
//  ContentView.swift
//  TableView (List) SwiftUI
//
//  Created by Edy on 6/28/19.
//  Copyright © 2019 AppMillers. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var titles = ["Swift", "SwiftUI", "Xcode", "iOS", "Mac"]

    var body: some View {
        NavigationView {
            List(0..<titles.count) { index in
                HStack {
                    Image(self.titles[index]).resizable()
                        .frame(width: 60, height: 60)
                    Text(self.titles[index])
                }
            }
            .navigationBarTitle(Text("Apple List"), displayMode: .large)
        }
  
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
