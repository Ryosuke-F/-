//
//  BaseState.swift
//  真実か挑戦
//
//  Created by Ryosuke Fukuda on 7/3/15.
//  Copyright (c) 2015 Ryochan. All rights reserved.
//

enum BaseState {
    
    case One
    case Two
    
    func toSegmentNum() -> Int {
        
        switch(self) {
            
        case .One:
            return 0
        case .Two:
            return 1
            
        }
        
    }
    
    
    
}
