/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Random Colors
var a = random(from: 0, toButNotIncluding: 361)

// Cones
for x in stride(from: 0, through: 100, by: 10) {
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    canvas.borderColor = Color(hue: a + x, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: x, width: x, height: x)
    canvas.drawEllipse(centreX: 300 - x, centreY: 300 - x, width: x, height: x)
    canvas.drawEllipse(centreX: 300 - x, centreY: x, width: x, height: x)
    canvas.drawEllipse(centreX: x, centreY: 300 - x, width: x, height: x)
    canvas.drawEllipse(centreX: 150, centreY: x, width: x, height: x)
    canvas.drawEllipse(centreX: x, centreY: 150, width: x, height: x)
    canvas.drawEllipse(centreX: 150, centreY: 300 - x, width: x, height: x)
    canvas.drawEllipse(centreX: 300 - x, centreY: 150, width: x, height: x)
    canvas.drawEllipse(centreX: 150, centreY: 150, width: x * 4, height: x * 4)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
