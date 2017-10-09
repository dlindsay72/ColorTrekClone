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
    var player: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        setupTracks()
        createPlayer()
        tracksArray.first?.color = UIColor.green
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    func createPlayer() {
        player = SKSpriteNode(imageNamed: "player")
        guard let playerPosition = tracksArray.first?.position.x else { return }
        player?.position = CGPoint(x: playerPosition, y: self.size.height / 2)
        
        self.addChild(player!)
    }
    
    func setupTracks() {
        for i in 0...8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray.append(track)
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.previousLocation(in: self)
            let node = self.nodes(at: location).first
            
            if node?.name == "right" || node?.name == "rightImg" {
                print("move right")
            } else if node?.name == "up" || node?.name == "upImg"{
                print("move up")
            } else if node?.name == "down" || node?.name == "downImg" {
                print("move down")
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}














