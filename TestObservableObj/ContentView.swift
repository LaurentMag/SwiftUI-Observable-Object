//
//  ContentView.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var boutonVar: ObservedVar = observedVar
    @StateObject var showModalVar: ObservedVar  = observedVar
    
    
    var body: some View {
        
        VStack {
            
            //Debug
            //Text("Modal Bool : " + String(showModalVar.showModalObs))
            //Debug
            
            Text("parent counter : " + String(boutonVar.boutonCountObs))
                .foregroundColor(.white)
                .font(.system(size: 25))
                .frame(maxWidth: .infinity, maxHeight: 70)
                .background(Color(.gray))
            Spacer()
            
            // ============================================================================
            Button(action: {
                boutonVar.boutonCountObs += 1
                
            }, label: {
                //Text("increment counter : \n \(boutonVar.boutonCountObs)")
                Text("increment counter")
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(20)
                    .background(Color(.black))
                    .cornerRadius(10)
            })
            
            Button(action: {
                boutonVar.boutonCountObs -= 1
                
            }, label: {
                Text("decrease counter")
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(20)
                    .background(Color(.black))
                    .cornerRadius(10)
            })
            
            // ============================================================================
            Button(action: {
                self.showModalVar.showModalObs.toggle()
                
            }, label: {
                Text("showModal")
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(10)
                    .background(Color(.black))
                    .cornerRadius(10)
            })
                .sheet(isPresented: $showModalVar.showModalObs, content: {
                    Modal()
                })
                .padding(.vertical, 40)
            
            Spacer()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
