//
//  ContentView.swift
//  firstapp
//
//  Created by 57block on 2022/7/5.
//



import SwiftUI
import SwiftUI
import WebKit
let preferences = WKPreferences()



    
struct ContentView: View {
    @State private var showWebView1 = false;

    @State private var showWebView2 = false;

    var body: some View {

        Button {
            showWebView1.toggle()
        } label: {
            Text("click me to load remote webpage!")
        }
        .buttonStyle(.borderedProminent)

        .sheet(isPresented: $showWebView1) {
            WebView(url: URL(string: "https://www.bing.com")!)
        }
        
        Button {
            showWebView2.toggle()
        } label: {
            Text("click me to load local webpage!")
        }.buttonStyle(.bordered)
        .sheet(isPresented: $showWebView2) {
            let bundlePath = Bundle.main.bundlePath
            let path = "file://\(bundlePath)/ad.html"

            WebView(url: URL(string: path)!)
        }.padding()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

