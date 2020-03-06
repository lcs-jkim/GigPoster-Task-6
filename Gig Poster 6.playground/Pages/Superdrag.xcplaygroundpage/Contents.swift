//: # Gig Poster 6
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![superdrag-no-grid](superdrag-no-grid.png "Talking Heads")
 ![superdrag-with-grid](superdrag-with-grid.png "Talking Heads")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * use of arithmetic operators in expressions
 * functions
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.
 
 Good luck! You've got this! 👊🏻👊🏼👊🏽👊🏾👊🏿
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true

// Create background
canvas.fillColor = lightBlue

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Change the axis point
canvas.translate(to: Point(x: 200, y: 400))

// Now to create the inner white circle
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = offWhite
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 15, height: 15)

// Use thicc border to create white circles
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 13

// Create loop that increases the width and height of the elipse to make lots of circles

for size in stride(from: 2, to: 400, by: 48) {

canvas.drawEllipse(at: Point(x: 0, y: 0), width: size, height: size)
}

// Now to create the inner pink circle
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = translucentPink
canvas.drawEllipse(at: Point(x: 0, y: 100), width: 15, height: 15)

// Use thicc border for pink circles
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = translucentPink
canvas.defaultBorderWidth = 14

// Same loop as before that increases the width and height of elipse for lots of circles

for size2 in stride(from: 0, to: 400, by: 48) {
    
    canvas.drawEllipse(at: Point(x: 0, y: 0 + 100), width: size2, height: size2)
}

// Title text
canvas.textColor = Color.black
canvas.drawText(message: "superdrag", at: Point(x: -180, y: -318), size: 55, kerning: 0)

// Subtext #1
canvas.drawText(message: "with", at: Point(x: -180, y: -345), size: 10, kerning: 0)
canvas.drawText(message: "the shambles", at: Point(x: -180, y: -360), size: 10, kerning: 0)
canvas.drawText(message: "and lifter", at: Point(x: -180, y: -375), size: 10, kerning: 0)

// Subtext #2
canvas.drawText(message: "thursday", at: Point(x: -80, y: -345), size: 10, kerning: 0)
canvas.drawText(message: "june 13 1996 / 8:30", at: Point(x: -80, y: -360), size: 10, kerning: 0)
canvas.drawText(message: "no age limit", at: Point(x: -80, y: -375), size: 10, kerning: 0)

canvas.drawText(message: "at brick by brick", at: Point(x: 100, y: -345), size: 10, kerning: 0)
canvas.drawText(message: "1130 buenos avenue", at: Point(x: 100, y: -360), size: 10, kerning: 0)
canvas.drawText(message: "san diego, ca", at: Point(x: 100, y: -375), size: 10, kerning: 0)




/*:
 ## Use Source Control
 
 To create evidence that supports your case for exceeding expectations for thread 3:

 * You *must* commit and push regularly ... *not* just at the end of this task.

 * You *must* complete your work prior to 1:00 PM on Friday, March 6, 2020.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


