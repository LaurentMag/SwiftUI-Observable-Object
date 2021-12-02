//
//  NavParent.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import SwiftUI

struct NavParent: View {
    
    @StateObject var boutonVar: ObservedVar = observedVar
    
    var body: some View {
        // ============================================================================
        ZStack {
            Color.gray
            VStack {
                // ============================================================================
                Button(action: {
                    boutonVar.boutonCountObs += 1
 
                }, label: {
                    Text("Click me :  \(boutonVar.boutonCountObs)")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(.trailing, 20)
                })
                    .padding(30)
                
                
                // ============================================================================
                NavigationView {
                    
                    
                    NavigationLink(
                        destination: NavTarget(boutonVar: observedVar),
                        label: {
                            VStack {
                            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                                    .padding(10)
                            Text("\(boutonVar.boutonCountObs)")
                            }
                        }
                    )
                } // -------------------------- NAVVIEW
                
            }// --------------------------VSTACK
        }// --------------------------ZSTACK
        
        
    } // --------------------------
}// --------------------------

struct NavParent_Previews: PreviewProvider {
    static var previews: some View {
        NavParent()
    }
}
