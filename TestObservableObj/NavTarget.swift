//
//  NavTarget.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import SwiftUI

struct NavTarget: View {
    
    @ObservedObject var boutonVar: ObservedVar = observedVar
    
    
    var body: some View {
        Text("\(boutonVar.boutonCountObs)")
    }
}

struct NavTarget_Previews: PreviewProvider {
    static var previews: some View {
        NavTarget(boutonVar: observedVar)
    }
}
