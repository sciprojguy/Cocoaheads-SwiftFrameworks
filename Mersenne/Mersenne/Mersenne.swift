//
//  Mersenne.swift
//  Mersenne
//
//  Created by Chris Woodard on 8/10/17.
//  Copyright © 2017 UsefulSoft. All rights reserved.
//

import Foundation
import twister

public class Mersenne {

    static var rn:Mersenne? = nil
    public static func shared() -> Mersenne? {
        if nil == rn {
            rn = Mersenne()
            init_genrand(808372948)
        }
        return rn
    }
    
    public func roll(shakes:Int) -> [UInt] {
    
        for _ in 0...shakes {
            genrand_int32()
        }
        
        let die1 = 1 + genrand_int32()%6
        let die2 = 1 + genrand_int32()%6
        
        return [die1, die2]
    }
    
}
