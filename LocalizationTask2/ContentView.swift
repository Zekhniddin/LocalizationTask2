//
//  ContentView.swift
//  LocalizationTask2
//
//  Created by Зехниддин on 31/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var pdp_Best = "PDP - Best Programming Academy".localized()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(pdp_Best)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                HStack(spacing: 0) {
                    Button(action: {
                        Bundle.setLanguage(lang: "en")
                        pdp_Best = "PDP - Best Programming Academy".localized()
                    }) {
                        Text("English").frame(maxWidth: .infinity, maxHeight: 70).background(Color.red)
                    }
                    Button(action: {
                        Bundle.setLanguage(lang: "ko")
                        pdp_Best = "PDP - Best Programming Academy".localized()
                    }) {
                        Text("Korean").frame(maxWidth: .infinity, maxHeight: 70).background(Color.blue)
                    }
                    Button(action: {
                        Bundle.setLanguage(lang: "zh")
                        pdp_Best = "PDP - Best Programming Academy".localized()
                    }) {
                        Text("Chinese").frame(maxWidth: .infinity, maxHeight: 70).background(Color.green)
                    }
                }.foregroundColor(.white)
            }.navigationBarTitle("Title".localized(), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
