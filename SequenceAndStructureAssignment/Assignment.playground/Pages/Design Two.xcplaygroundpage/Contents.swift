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
            for s in stride(from: 20, through: 10, by: -5){
                let start = random(from: -2, toButNotIncluding: 3)
                canvas.drawShapesWithFill = false
                canvas.drawShapesWithBorders = true
                canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
                canvas.defaultBorderWidth = 1
                canvas.drawRectangle(bottomLeftX: x-start, bottomLeftY: y-start, width: s, height: s)
                
                }
            
        }else{
            for s in stride(from: 5, through: 25, by: 5){
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

for x in stride(from: 90, through: 10, by: -5){
    canvas.borderColor = Color(hue: SC, saturation: 100, brightness: 100, alpha: 100)
    let number = random(from: 1, toButNotIncluding: 2)
    if number > 1{
        let middle = random(from: 0, toButNotIncluding: 6)
        canvas.defaultBorderWidth = 2
        canvas.drawEllipse(centreX: 150 - middle, centreY: 250 - middle, width: x, height: x)
        canvas.drawEllipse(centreX: 250 - middle, centreY: 150 - middle, width: x, height: x)
        canvas.drawEllipse(centreX: 350 - middle, centreY: 250 - middle, width: x, height: x)
        canvas.drawEllipse(centreX: 250 - middle, centreY: 350, width: x, height: x)
    }else{
        let middle = random(from: 0, toButNotIncluding: 6)
        canvas.defaultBorderWidth = 2
        canvas.drawEllipse(centreX: 150 + middle, centreY: 250 + middle, width: x, height: x)
        canvas.drawEllipse(centreX: 250 + middle, centreY: 150 + middle, width: x, height: x)
        canvas.drawEllipse(centreX: 350 + middle, centreY: 250 + middle, width: x, height: x)
        canvas.drawEllipse(centreX: 250 + middle, centreY: 350 + middle, width: x, height: x)
    }
    
}

//Draw inner Square Pattern

for x in stride(from: 55, through: 5, by: -5){
    canvas.borderColor = Color(hue: MC, saturation: 100, brightness: 100, alpha: 100)
    canvas.defaultBorderWidth = 30
    let number = random(from: 1, toButNotIncluding: 2)
    if number > 1{
        let corner = random(from: 0, toButNotIncluding: 15)
        canvas.drawRectangle(bottomLeftX: 123 - corner, bottomLeftY: 123 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 323 - corner, bottomLeftY: 323 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 123 - corner, bottomLeftY: 323 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 323 - corner, bottomLeftY: 123 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 223 - corner, bottomLeftY: 223 + corner, width: x, height: x)
    }else{
        let corner = random(from: 0, toButNotIncluding: 10)
        canvas.drawRectangle(bottomLeftX: 123 + corner, bottomLeftY: 123 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 323 + corner, bottomLeftY: 323 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 123 + corner, bottomLeftY: 323 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 323 + corner, bottomLeftY: 123 + corner, width: x, height: x)
        canvas.drawRectangle(bottomLeftX: 223 + corner, bottomLeftY: 223 + corner, width: x, height: x)
    }
    
    }


//Copy to Clipboard
canvas.copyToClipboard()
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
