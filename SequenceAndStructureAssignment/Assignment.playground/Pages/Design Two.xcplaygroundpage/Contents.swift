/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//Create Main Color
var MC = random(from: 0, toButNotIncluding: 361)

//Create Complimentry Color
var SC = (MC + 180) % 360

//draw outer square
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 1, bottomLeftY: 1, width: 498, height: 498)


//draw second outer square
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: SC, saturation: 100, brightness: 100, alpha: 100)
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 50, bottomLeftY: 50, width: 400, height: 400)



//Draw Background Pattern

for x in stride(from: 20, through: 500, by: 50){
    for y in stride(from:20, through: 475, by: 50){
        let number = random(from: 0, toButNotIncluding: 2)
        if number == 0{
            canvas.drawShapesWithFill = false
            canvas.drawShapesWithBorders = true
            canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
            canvas.defaultBorderWidth = 1
            canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 10, height: 10)
            canvas.drawRectangle(bottomLeftX: x-5, bottomLeftY: y-5, width: 20, height: 20)
        }else{
            for s in stride(from: 5, through: 30, by: 5){
                let center = random(from: 0, toButNotIncluding: 3)
                canvas.drawShapesWithFill = false
                canvas.drawShapesWithBorders = true
                canvas.borderColor = Color(hue: SC, saturation: 100, brightness: 100, alpha: 100)
                canvas.defaultBorderWidth = 1
                canvas.drawEllipse(centreX: x - center, centreY: y - center, width: s, height: s)
            }
        }
    }
}

//Draw Shape to cover background
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 300, height: 300)

//Draw Inner Square Grid
canvas.drawShapesWithBorders = true
for x in stride(from: 100, through:300, by: 100){
    for y in stride(from: 100, through: 300, by: 100){
        canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
    }
    
}

//Draw Inner Circle Pattern
canvas.borderColor = Color(hue: SC, saturation: 100, brightness: 100, alpha: 100)
canvas.defaultBorderWidth = 2
canvas.drawEllipse(centreX: 150, centreY: 250, width: 90, height: 90)
canvas.drawEllipse(centreX: 150, centreY: 250, width: 45, height: 45)

canvas.drawEllipse(centreX: 250, centreY: 150, width: 90, height: 90)
canvas.drawEllipse(centreX: 250, centreY: 150, width: 45, height: 45)

canvas.drawEllipse(centreX: 350, centreY: 250, width: 90, height: 90)
canvas.drawEllipse(centreX: 350, centreY: 250, width: 45, height: 45)

canvas.drawEllipse(centreX: 250, centreY: 350, width: 90, height: 90)
canvas.drawEllipse(centreX: 250, centreY: 350, width: 45, height: 45)


//Draw inner Square Pattern
canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
canvas.defaultBorderWidth = 25
canvas.drawRectangle(bottomLeftX: 123, bottomLeftY: 123, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 323, bottomLeftY: 323, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 123, bottomLeftY: 323, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 323, bottomLeftY: 123, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 223, bottomLeftY: 223, width: 55, height: 55)

//Copy to Clipboard
canvas.copyToClipboard()
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
