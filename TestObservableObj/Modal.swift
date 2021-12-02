//
//  Modal.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import SwiftUI

struct Modal: View {
    
    @ObservedObject var boutonVar: ObservedVar = observedVar
    @ObservedObject var showModalBind: ObservedVar  = observedVar
    
    
    // ============================================================================
//    var displayvalue: String {
//        if showModalBind.showModalObs == true {
//            return "\(String(boutonVar.boutonCountObs))"
//        } else {
//            return "pas true ?"
//        }
//    }
    
    

    var body: some View {
        // ============================================================================
        VStack {
            Text("modal counter : " + String(boutonVar.boutonCountObs))
                .foregroundColor(.white)
                .font(.system(size: 25))
                .frame(maxWidth: .infinity, maxHeight: 70)
                .background(Color(.gray))
            Spacer()
            
            Button(action: {
                showModalBind.showModalObs = false

            }, label: {
                Text("close modal")
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(10)
                    .background(Color(.black))
                    .cornerRadius(10)
            })
                .offset(y: 60)
                Spacer()
        }
        
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal()
    }
}
