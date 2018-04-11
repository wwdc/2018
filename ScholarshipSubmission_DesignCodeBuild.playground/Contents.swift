//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class Director
{
    var character : Character?
    var scene : Scene?
    
    // Progressions through the scene
    var isTitle = false
    var introductions = false
    var isForest = false
    var isForestFull = false
    var isForestDark = false
    var isForestDarkOut = false
    var isRoadDark = false
    var isRoadOut = false
    var isIslandDark = false
    var isIslandOut = false
    var isFallingMoon = false
    var isFalling = false
    var isFallingClouds = false
    
    public init(character: Character, scene: Scene)
    {
        self.character = character
        self.scene = scene
    }
    
    @objc func progressScene()
    {
        
        if (!isTitle)
        {
            scene?.changeBackground(filename: "title.jpg")
            self.character?.changeSprite(filename: "")
            
            isTitle = true
            return
        }
        
        if (!introductions)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3.jpg")
            
            //scene?.backgroundColor = .yellow
            //character?.changeSprite(backgroundColor: .purple)
            
            let parentCenter = scene?.center
            
            character?.walkToPoint(point: CGPoint(x: (parentCenter?.x)!, y: 340), duration: 1.3, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                   
                    
                self.character?.changeSprite(filename: "running3.png")
    
                }
            )
            scene?.changeBackground(filename: "3_1.jpg")
            introductions = true
            return
        }
        
        if (!isForest)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3a3.jpg")
            
            //scene?.backgroundColor = .yellow
            //character?.changeSprite(backgroundColor: .purple)
            
            
            character?.walkToPoint(point: CGPoint(x: 800, y: 370), duration: 2, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "3a_1.jpg")
                    self.character?.changeSprite(filename: "running3.png")
                    
                    }
                
            )
            self.scene?.changeBackground(filename: "3a_1.jpg")
            
            isForest = true
            return
        }
        
        if (!isForestFull)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3b3.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: -200, y: 380)
            
            character?.walkToPoint(point: CGPoint(x: parentCenter!.x, y: 380), duration: 1.3, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "3b3.jpg")
                    self.character?.changeSprite(filename: "running3.png")
            }
            )
            scene?.changeBackground(filename: "3b-1.jpg")
            isForestFull = true
            return
        }
        
        if (!isForestDark)
        {
            scene?.changeBackground(filename: "3c3.jpg")
            self.character?.changeSprite(filename: "running3.png")
            
            scene?.changeBackground(filename: "3c-1.jpg")
            isForestDark = true
            return
        }
        
        if (!isForestDarkOut)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3c3.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: parentCenter!.x, y: 380)
            
            character?.walkToPoint(point: CGPoint(x: 800, y: 380), duration: 1.3, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "3c3.jpg")
                    self.character?.changeSprite(filename: "running3.png")
            }
            )
            
            isForestDarkOut = true
            return
        }
        
        if (!isRoadDark)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3de.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: -200, y: 380)
            
            character?.walkToPoint(point: CGPoint(x: parentCenter!.x, y: 380), duration: 1.3, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "3de.jpg")
                    self.character?.changeSprite(filename: "running3.png")
            }
            )
            
            
            isRoadDark = true
            return
        }
        
        
        if (!isRoadOut)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "3de.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: parentCenter!.x, y: 380)
            
            character?.walkToPoint(point: CGPoint(x: 800, y: 380), duration: 1.3, faceForward: true, scale: 1.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "3de_1.jpg")
                    self.character?.changeSprite(filename: "running3.png")
            }
            )
            
            isRoadOut = true
            return
        }
        
        if (!isIslandDark)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "4.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: 100, y: 270)
            
            character?.walkToPoint(point: CGPoint(x: parentCenter!.x, y: 270), duration: 1.3, faceForward: true, scale: 0.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "4_1.jpg")
                    self.character?.changeSprite(filename: "running3.png")
            }
            )
            
            isIslandDark = true
            return
        }
        
        if (!isIslandOut)
        {
            character?.loopSprites(sprites: ["running1.png","running2.png","running3.png","running4.png"], fps: 0.3)
            
            scene?.changeBackground(filename: "4_1.jpg")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: parentCenter!.x, y: 270)
            
            character?.walkToPoint(point: CGPoint(x: 470, y: -50), duration: 2.6, faceForward: true, scale: 0.4, completionHandler:
                {
                    self.character?.stopLoop()
                    
                    self.scene?.changeBackground(filename: "4_1.jpg")
                    self.character?.changeSprite(filename: "running3.png")
                    self.scene?.changeBackground(filename: "5.jpg")
                }
            )
            
            isIslandOut = true
            return
        }
        
        
        if (!isFallingMoon)
        {
            scene?.changeBackground(filename: "5.jpg")
            self.character?.changeSprite(filename: "running3.png")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: (parentCenter?.x)!, y: -100)
            
            character?.walkToPoint(point: CGPoint(x: (parentCenter?.x)!, y: 110), duration: 1.7, faceForward: true, scale: 1.0, completionHandler:
                {
                    self.character?.walkToPoint(point: CGPoint(x: (parentCenter?.x)!, y: 110), duration: 0.1, faceForward: true, scale: 1.0, completionHandler: {
                        
                    })
                
            })
            
            scene?.changeBackground(filename: "5_1.jpg")
            isFallingMoon = true
            return
        }
        
        if (!isFalling)
        {
            scene?.changeBackground(filename: "background2.jpg")
            self.character?.changeSprite(filename: "running3.png")
            
            let parentCenter = scene?.center
            
            character?.center = CGPoint(x: (parentCenter?.x)!, y: -100)
            
            character?.walkToPoint(point: CGPoint(x: (parentCenter?.x)!, y: 110), duration: 1.7, faceForward: true, scale: 1.0, completionHandler:
            {
                self.character?.walkToPoint(point: CGPoint(x: (parentCenter?.x)!, y: 600), duration: 1.6, faceForward: true, scale: 1.0, completionHandler: {
                
                })
                self.scene?.changeBackground(filename: "background1.jpg")
            })
            
            isFalling = true
            return
        }
        
        if (!isFallingClouds)
        {
            scene?.changeBackground(filename: "title.jpg")

            
            isFallingClouds = true
            return
        }

        isTitle = false
        introductions = false
        isForest = false
        isForestFull = false
        isForestDark = false
        isForestDarkOut = false
        isRoadDark = false
        isRoadOut = false
        isIslandDark = false
        isIslandOut = false
        isFallingMoon = false
        isFalling = false
        isFallingClouds = false
        
        
        progressScene()
    }
}

class Character : UIView
{
    let characterSize = CGSize(width: 120, height: 200)
    var shouldAnimateWalk = false
    
    var faceForward = false
    var targetScale : CGFloat = 1.0
    
    let imageView: UIImageView =
    {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "running1.png")
        imageView.contentMode = .scaleAspectFit
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return imageView
    }()
    
    func dress()
    {
        let characterSizeAndPosition = CGRect(x: -120, y: 240, width: characterSize.width, height: characterSize.height)
        frame = characterSizeAndPosition
        
        imageView.frame = bounds
        addSubview(imageView)
    }
    
    func loopSprites(sprites : Array<String>, fps : Double)
    {
        var images = Array<UIImage>()
        for sprite in sprites
        {
            images.append(UIImage.init(named: sprite)!)
        }
        imageView.animationImages = images
        imageView.animationRepeatCount = 0
        imageView.animationDuration = fps
        imageView.startAnimating()
    }
    
    func stopLoop()
    {
        imageView.stopAnimating()
    }
    
    func changeSprite(filename: String)
    {
        UIView.transition(with: imageView, duration: 0.7, options: .transitionCrossDissolve, animations:
            {
                self.imageView.image = UIImage.init(named: filename)
                
        },completion: nil)
    }
    
    func walkToPoint(point: CGPoint?, duration: Double, faceForward: Bool, scale: CGFloat, completionHandler: @escaping (() -> Void))
    {
        self.faceForward = faceForward
        self.targetScale = scale
        
        walk(start: true)
        
        UIView.animate(withDuration: duration, animations:
        {
            self.center = point!
        }, completion: { finished in
            
            if (finished)
            {
                self.walk(start: false)
                
                completionHandler()
            }
            
        })
    }
    
    func walk(start : Bool)
    {
        self.shouldAnimateWalk = start
        if (start)
        {
            animateWalk()
        }
    }
    
    func walkTransform (angle: CGFloat) -> CGAffineTransform
    {
        var multiTransform = CGAffineTransform.identity
        multiTransform = multiTransform.rotated(by: angle  * .pi / 180.0)
        multiTransform = multiTransform.scaledBy(x: (self.faceForward) ? self.targetScale : -self.targetScale, y: self.targetScale)
        return multiTransform
    }
    
    func animateWalk()
    {
        let angle : CGFloat = 2.0;
    
        let deadlineTime = DispatchTime.now() + .seconds(0)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime)
        {
            if (!self.shouldAnimateWalk)
            {
                UIView.animate(withDuration: 0.4, animations:
                {
                        self.transform = self.walkTransform(angle: 0)
                })
                
                return
            }
            
            UIView.animate(withDuration: 0.2, delay: 0.0, options: [], animations:
            {
                    self.transform = self.walkTransform(angle:angle)
                    
            }, completion: { (finished: Bool) in
                
                if (!finished)
                {
                    return
                }
                
                UIView.animate(withDuration: 0.2, delay: 0.0, options: [], animations:
                    {
                        self.transform = self.walkTransform(angle:-angle)
                        
                }, completion: { (finished: Bool) in
                    
                    if (finished)
                    {
                        self.animateWalk()
                    }
                })
            })
        }
        

    }
    
}

class Scene : UIView
{
    let imageView: UIImageView =
    {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.translatesAutoresizingMaskIntoConstraints = true
        return imageView
    }()
    
    func setup()
    {
        imageView.frame = bounds
        addSubview(imageView)
    }
    
    func changeBackground(filename: String)
    {
        UIView.transition(with: imageView, duration: 0.7, options: .transitionCrossDissolve, animations:
        {
            self.imageView.image = UIImage.init(named: filename)

        },completion: nil)
    }
}

//var str = "Hello, please click the scene / live view to progress the scene"

let scene = Scene()
scene.setup()
scene.changeBackground(filename: "3.jpg")
scene.backgroundColor = .white
scene.frame = CGRect(x: 0, y: 0, width: 640, height: 480)

let character = Character()
character.dress()
scene.addSubview(character)

// Interactive Button
let button = UIButton(type:.custom)
button.frame = scene.bounds
scene.addSubview(button)

let director = Director(character: character, scene: scene)
button.addTarget(director, action: #selector(director.progressScene), for: .touchDown)


PlaygroundPage.current.liveView = scene
