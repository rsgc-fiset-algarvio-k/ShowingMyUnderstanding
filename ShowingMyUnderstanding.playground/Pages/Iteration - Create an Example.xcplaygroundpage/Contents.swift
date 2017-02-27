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

// random Color
var a = random(from: 0, toButNotIncluding: 361)

for z in stride(from: 0, through: 100, by: 10) {
    for x in stride(from: 0, through: 200, by: 100) {
        for y in stride(from: 0, through: 200, by: 100) {
            canvas.drawShapesWithBorders = true
            canvas.drawShapesWithFill = false
            canvas.borderColor = Color(hue: a + z, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: z / 2 + x, centreY: z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: 100 - z / 2 + x, centreY: 100 - z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: 100 - z / 2 + x, centreY: z / 2 + y, width: z, height: z)
            canvas.drawEllipse(centreX: z / 2 + x, centreY: 100 - z / 2 + y, width: z, height: z)
        }
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
