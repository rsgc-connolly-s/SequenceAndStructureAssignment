/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
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

//// Generate a grid
//canvas.drawShapesWithFill = false
//canvas.defaultBorderWidth = 1
//
//
//// This loop makes a 10 rows of columns
//for r in stride(from: 25, through: 475, by: 50){
//    
//    // This loop makes a single column, bottom to top
//    for c in stride(from: 25, through: 475, by: 50) {
//        
//        // Draw the shapes
//        canvas.drawEllipse(centreX: r, centreY: c, width: 2, height: 2)
//        canvas.drawRectangle(centreX: r, centreY: c, width: 50, height: 50)
//    }
//}

//draw outer square
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.black
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 1, bottomLeftY: 1, width: 498, height: 498)


//draw second outer square
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.black
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 50, bottomLeftY: 50, width: 400, height: 400)



//Draw Baclground Pattern

for x in stride(from: 20, through: 500, by: 50){
    for y in stride(from:20, through: 475, by: 50){
        let number = random(from: 0, toButNotIncluding: 2)
        if number == 0{
            canvas.drawShapesWithFill = false
            canvas.drawShapesWithBorders = true
            canvas.defaultBorderWidth = 1
            canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 10, height: 10)
            canvas.drawRectangle(bottomLeftX: x-5, bottomLeftY: y-5, width: 20, height: 20)
        }else{
            canvas.drawShapesWithFill = false
            canvas.drawShapesWithBorders = true
            canvas.defaultBorderWidth = 1
            canvas.drawEllipse(centreX: x+5, centreY: y+5, width: 10, height: 10)
            canvas.drawEllipse(centreX: x+5, centreY: y+5, width: 20, height: 20)
        }
    }
}

//Draw Shape to cover background
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.black
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 300, height: 300)

//Draw Inner Square Grid
for x in stride(from: 100, through:300, by: 100){
    for y in stride(from: 100, through: 300, by: 100){
          canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
    }

}

//Draw Inner Circle Pattern
canvas.drawEllipse(centreX: 150, centreY: 250, width: 90, height: 90)
canvas.drawEllipse(centreX: 150, centreY: 250, width: 45, height: 45)

canvas.drawEllipse(centreX: 250, centreY: 150, width: 90, height: 90)
canvas.drawEllipse(centreX: 250, centreY: 150, width: 45, height: 45)

canvas.drawEllipse(centreX: 350, centreY: 250, width: 90, height: 90)
canvas.drawEllipse(centreX: 350, centreY: 250, width: 45, height: 45)

canvas.drawEllipse(centreX: 250, centreY: 350, width: 90, height: 90)
canvas.drawEllipse(centreX: 250, centreY: 350, width: 45, height: 45)

//Draw inner Square Pattern 

canvas.drawRectangle(bottomLeftX: 123, bottomLeftY: 123, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 323, bottomLeftY: 323, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 123, bottomLeftY: 323, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 323, bottomLeftY: 123, width: 55, height: 55)

canvas.drawRectangle(bottomLeftX: 223, bottomLeftY: 223, width: 55, height: 55)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
