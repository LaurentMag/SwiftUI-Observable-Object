//
//  TestObservableObjApp.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import SwiftUI

@main
struct TestObservableObjApp: App {
    
    @StateObject var observedVar = ObservedVar()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
