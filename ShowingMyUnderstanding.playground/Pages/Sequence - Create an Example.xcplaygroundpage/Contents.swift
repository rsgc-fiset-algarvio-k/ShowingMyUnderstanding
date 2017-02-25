/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

    var a = random(from: 0, toButNotIncluding: 361)
    var b = random(from: 0, toButNotIncluding: 361)
    var c = random(from: 0, toButNotIncluding: 361)
    var d = random(from: 0, toButNotIncluding: 361)
    var e = random(from: 0, toButNotIncluding: 361)
    var f = random(from: 0, toButNotIncluding: 361)
    var g = random(from: 0, toButNotIncluding: 361)
    var h = random(from: 0, toButNotIncluding: 361)
    var i = random(from: 0, toButNotIncluding: 361)

for x in stride(from: 0, through: 100, by: 10) {
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    canvas.borderColor = Color(hue: a, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 150, centreY: 150, width: x, height: x)
    canvas.borderColor = Color(hue: b, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: x / 2 + 200, centreY: 150, width: x, height: x)
    canvas.borderColor = Color(hue: c, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 100 - (x / 2), centreY: 150, width: x, height: x)
    canvas.borderColor = Color(hue: d, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 150, centreY: 100 - x / 2, width: x, height: x)
    canvas.borderColor = Color(hue: e, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 150, centreY: x / 2 + 200, width: x, height: x)
    canvas.borderColor = Color(hue: f, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: x / 2, centreY: x / 2, width: x, height: x)
    canvas.borderColor = Color(hue: g, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 300 - x / 2, centreY: x / 2, width: x, height: x)
    canvas.borderColor = Color(hue: h, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: x / 2, centreY: 300 - x / 2, width: x, height: x)
    canvas.borderColor = Color(hue: i, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 300 - x / 2, centreY: 300 - x / 2, width: x, height: x)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
