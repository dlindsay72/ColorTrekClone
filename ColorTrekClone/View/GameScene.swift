//
//  GameScene.swift
//  ColorTrekClone
//
//  Created by Dan Lindsay on 2017-10-09.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var tracksArray = [SKSpriteNode]()
    
    override func didMove(to view: SKView) {
        setupTracks()
        
        tracksArray.first?.color = UIColor.green
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    func setupTracks() {
        for i in 0...8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray.append(track)
            }
        }
    }
}
