//
//  Data.swift
//  TestObservableObj
//
//  Created by Laurent Woots on 02/12/2021.
//

import Foundation



class ObservedVar: ObservableObject {
    @Published var boutonCountObs: Int = 0
    @Published var showModalObs: Bool = false
    
    
    //    init(boutonCountOBSParam: Int = 0, showModalObsParam: Bool = false)
    //    {
    //        self.boutonCountObs = boutonCountObsParam
    //        self.showModalObs = showModalObsParam
    //    }
}

var observedVar = ObservedVar()
