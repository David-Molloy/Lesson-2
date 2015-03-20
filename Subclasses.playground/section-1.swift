// Playground - noun: a place where people can play

import UIKit
import XCPlayground


class Shape: UIView {
    var colour: UIColor
    init(colour:UIColor){
        self.colour = colour
        super.init(frame: CGRectZero)
        self.backgroundColor = colour
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func getArea() -> Double{
        return 0
    }
}

class Circle: Shape {
    var radius:Int
    init(radius:Int, colour:UIColor){
        self.radius = radius
        super.init(colour: colour)
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double{
        var squared: Double
        squared = (Double(radius * radius))
        return (Double(M_PI * squared))
    }
}
class Square: Shape {
    var width:Int
    init(width:Int, colour:UIColor){
        self.width = width
        super.init(colour: colour)
        self.frame.size = CGSize(width: width, height: width)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double{
        return (Double(width * width))
    }
}

class Rectangle: Shape {
    var width:Int
    var height:Int
    init(width:Int, height:Int, colour:UIColor){
        self.width = width
        self.height = height
        super.init(colour: colour)
        self.frame.size = CGSize(width: width, height: height)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return (Double(width * height))
    }
}

class RoundedRectangle: Rectangle{
    var radius: Int
    init(radius:Int, color:UIColor, width:Int, height:Int){
        self.radius = radius
        super.init(width: width, height: height, colour: color)
        self.layer.cornerRadius = CGFloat(radius)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var circle:Circle = Circle(radius: 50, colour: UIColor.redColor())
circle.colour
circle.radius

var square = Square(width: 100, colour: UIColor.greenColor())
square.colour
square.width
square.getArea()

var rectangle = Rectangle(width: 35, height: 75, colour: UIColor.blueColor())

var roundedRectangle = RoundedRectangle(radius: 20, color: UIColor.yellowColor(), width: 85, height: 200)


circle.center = CGPoint(x: 200, y: 100)
square.center = CGPoint(x: 200, y: 210)
rectangle.center = CGPoint(x: 300, y: 300)
roundedRectangle.center = CGPoint(x:100, y: 200)


let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)
view.backgroundColor = UIColor.blackColor()
view.addSubview(circle)
view.addSubview(square)
view.addSubview(rectangle)
view.addSubview(roundedRectangle)

class Infantry{
    var name:String
    var health: Int
    var color:UIColor
    init (name:String, health: Int, color:UIColor){
        self.name = name
        self.health = health
        self.color = color
    }
}

class Archer: Infantry{
    var range: Int
    init(name:String, health:Int, color:UIColor, range:Int){
        self.range = range
        super.init(name: name, health: health, color: color)
    }
}

var robinHood = Archer(name: "Robin Hood", health: 100, color: UIColor.greenColor(), range: 120)
robinHood.name


