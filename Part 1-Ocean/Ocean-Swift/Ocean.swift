//
//  Ocean.swift
//  Ocean-Swift
//
//  Created by Daniel Mathews on 2015-01-27.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

struct Ocean {
    
    static let kMAX_DEPTH = 4
    static let kMAX_TILE = 5
    static let kSURFACE = 0
    
    enum FishType {
        case Empty
        case Tuna
        case Salmon
    }
    
    // The board below represents the ocean. It's an array of tuples
    // Tuple order is (depth, tile, FishType)
    // Each tile is either .Empty or has a fish: .Salmon or .Tuna
    
    var board:[(Int,Int,FishType)] = [
        
                    /* => => Forward direction => => */
                    /* 1 2 3 4 5 # Tile Number */
        
        (1,1,.Empty),(1,2,.Empty),(1,3,.Empty),(1,4,.Salmon),(1,5,.Empty), //Depth1
        (2,1,.Tuna),(2,2,.Salmon),(2,3,.Empty),(2,4,.Empty),(2,5,.Salmon), //Depth2
        (3,1,.Salmon),(3,2,.Empty),(3,3,.Empty),(3,4,.Tuna),(3,5,.Empty), //Depth3
        (4,1,.Empty),(4,2,.Empty),(4,3,.Empty),(4,4,.Tuna),(4,5,.Empty)] //Depth4
    
                    /* => => Forward direction => => */
    
    func fishAtDepth(depth: Int, tile: Int) -> Fish? {
        
        let fishType = board[(tile-1) + (depth-1)*5].2
        
        if fishType == FishType.Salmon {
            return GiantSalmon()
        }
        else if fishType == FishType.Tuna {
            return GiantTuna()
        }
        
        return nil
    }
    

}
