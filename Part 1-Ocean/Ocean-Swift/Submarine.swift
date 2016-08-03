//
//  Submarine.swift
//  Ocean-Swift
//
//  Created by Yevhen Kim on 2016-08-02.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import UIKit

//declare protocol on delegator
//captain is delegate
protocol CaptainDelegate {
    func canGoFish() -> Bool
}

class Submarine {
    
    var depth: Int
    var tile: Int
    //create variable for delegate that conforms to CaptainDelegate protocol
    var captainDelegate: CaptainDelegate?

    init() {
        depth = Ocean.kSURFACE
        tile = Ocean.kSURFACE
    }
    
    func  dive() {
        if !(depth > Ocean.kSURFACE) {
            depth += 1
        }
    }
    
    func surface() {
        if depth == 1{
            depth = Ocean.kSURFACE
        }
        
    }
    
    func descend() {
        if depth > Ocean.kSURFACE && depth <= Ocean.kMAX_DEPTH {
            depth += 1
        }
    }
    
    func ascend() {
        if (depth > Ocean.kSURFACE + 1) && depth > Ocean.kSURFACE {
            depth -= 1
        }
    }
    
    func forward() {
        if depth > Ocean.kSURFACE && tile < Ocean.kMAX_TILE{
            tile += 1
        }
    }
    
    func backwards() {
        if depth > Ocean.kSURFACE && tile > 1{
            tile -= 1
        }
    }
    
    func goFish(ocean: Ocean, depth: Int, tile: Int) -> Fish?{
        //if delegate(Captain) can go to fish then return true
        //use ?? (as logical or (||) )
        if captainDelegate?.canGoFish() ?? true {
            return ocean.fishAtDepth(depth, tile: tile)
        }
        return nil
    }
    
}
