//
//  Captain.swift
//  Ocean-Swift
//
//  Created by Yevhen Kim on 2016-08-03.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import UIKit


//conform to CaptainProtocol
class Captain: CaptainDelegate {
    
    enum CaptainType: String {
        case Normal
        case Drunk
    }
    
    let type: CaptainType
    
    //var normal = CaptainType.Normal.rawValue
    //var drunky = CaptainType.Drunk.rawValue
    
    init(captainType: CaptainType) {
        type = captainType
    }
    
    //implement delegate function
    func canGoFish() -> Bool {
        //return true if the captain type is normal
        return type == .Normal
    }
    
}
