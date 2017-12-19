//
//  PlayerLaser.swift
//  Sebastian_CSP
//
//  Created by Bravo, Sebastian on 12/19/17.
//  Copyright © 2017 Bravo, Sebastian. All rights reserved.
//

import UIKit
import SpriteKit

class PlayerLaser: Projectile
{
    override init(imageName: String, bulletSound:String?)
    {
        super.init(imageName: imageName, bulletSound: bulletSound)
        self.physicsBody = SKPhysicsBody(texture: self.texture!, size: self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.usesPreciseCollisionDetection = true
        self.physicsBody?.catagoryBitMask = CollinCatagories.PlayerLaser
        self.physicsBody?.contactTestBitMask = CollisionCatagories.Invader
        self.physicsBody?.collisionBitMask = 0x0
    }

    required public init?(coder aDecoder : NSCoder)
    {
        super.init(coder: aDecoder)
    }
}

