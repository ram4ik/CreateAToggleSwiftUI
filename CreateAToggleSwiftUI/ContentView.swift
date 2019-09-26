//
//  ContentView.swift
//  CreateAToggleSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showGrid = false // Set initial state of toggle
    var body: some View {
        ZStack {
            Toggle(isOn: $showGrid) {
                HStack {
                    Image(systemName: "grid")
                    Text("Show Grid")
                }
            }.frame(width: 350)
                .padding(20)
                .background(Color(red: 0, green: 0, blue: 1, opacity: 0.2))
                .cornerRadius(10)
                .shadow(radius: 5)
                .offset(y: 362)
            
            if showGrid {
                ZStack {
                    VStack(alignment: .center, spacing: 34) {
                        ForEach(0 ..< 24) { item in
                            Divider()
                        }
                    }
                    HStack(alignment: .center, spacing: 34) {
                        ForEach(0 ..< 24) { item in
                            Divider()
                        }
                    }
                }
            }
            Capsule()
                .frame(width: 172, height: 310)
                .foregroundColor(.pink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
