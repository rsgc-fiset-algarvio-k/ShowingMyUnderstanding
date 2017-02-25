/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping_shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and circles used.

 Color and alpha (transparency) matter.

 Try reproducing this image for practice.

 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Blue line
canvas.lineColor =  Color(hue: 191, saturation: 100, brightness: 100, alpha: 50)
NSBezierPath.setDefaultLineCapStyle(NSLineCapStyle.roundLineCapStyle)
canvas.drawLine(fromX: 45, fromY: 170, toX: 45, toY: 50, lineWidth: 90)
canvas.drawLine(fromX: 45, fromY: 170, toX: 135, toY: 50, lineWidth: 90)

// Red Lines
canvas.lineColor =  Color(hue: 356, saturation: 100, brightness: 100, alpha: 50)
NSBezierPath.setDefaultLineCapStyle(NSLineCapStyle.roundLineCapStyle)
canvas.drawLine(fromX: 225, fromY: 170, toX: 225, toY: 50, lineWidth: 90)
canvas.drawLine(fromX: 225, fromY: 170, toX: 135, toY: 50, lineWidth: 90)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
