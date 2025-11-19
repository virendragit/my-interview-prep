## Abstraction in iOS (Swift) ref : https://medium.com/@surajglokhande/abstraction-in-ios-swift-efc2ab2d7284

How it works:
Hiding Complexity: It hides the internal workings of an object or system. Users interact with a simplified view.
Focus on Essentials: It presents only the relevant aspects to the user.
Defining Contracts: It establishes a contract that concrete implementations must adhere to. This ensures consistency across different implementations.

Key Benefits:
Reduced Complexity: Simplifies the understanding and use of complex systems.
Improved Maintainability: Changes to the internal implementation don’t necessarily affect the external interface.
Increased Flexibility: Allows for different implementations of an abstract concept without changing the client code.
Enhanced Reusability: Abstract components can be reused in various contexts.

Abstraction in iOS Swift
Swift, being a modern object-oriented language, provides excellent mechanisms to achieve abstraction. The primary ways to implement abstraction in Swift are:

Protocols: This is the most common and powerful way to achieve abstraction in Swift.
Abstract Classes (via Protocols and Extensions): While Swift doesn’t have explicit “abstract classes” like Java or C#, you can effectively achieve the same behavior using protocols and extensions.
Enums with Associated Values and Raw Values: Can sometimes be used to abstract different states or types.
Closures: Can abstract operations.

How it works in iOS Swift (Practical Examples):
1. Using Protocols (The Most Common Way)
Protocols define a blueprint of methods, properties, and other requirements that a class, struct, or enum can adopt. They specify “what to do” without specifying “how to do it.”

Example: Imagine you have different types of shapes, and you want to be able to calculate their area and perimeter.

//abstracting concept of shape:
```swift
protocol Shape
{
var name: String { get } 
func calculateArea() -> Double
func calculatePerimeter() -> Double

}
```

//concrete implementation:
```swift
struct Circle : Shape {
var name : String = "Circle"
var redius : Double
func calculateArea(){
 return .pi * radius * radius
}
func calculatePerimeter(){
return 2 * .pi * radius
}
}

struct Reactangle : Shape{
var name : String = Reactangle
var width: Double
var height: Double
func calculateArea(){
return hight * width
}
func calculatePerimeter(){
return 2(hight + width)
}

}
```

//Using Abstraction
```swift
func printAlltypeofShape(shape: Shape){
print('Name',shape.name)
print("Area: \(shape.calculateArea())")
print("Perimeter: \(shape.calculatePerimeter())")
print("---")
}

let circle = Circle(redius: 20.0)
let rectangle = Rectangle(width: 20.0 height:30.0)

printShapeDetails(shape: myCircle)
printShapeDetails(shape: myRectangle)

// You can even put them in an array of the abstract type
let shapes: [Shape] = [myCircle, myRectangle]
for shape in shapes {
    printShapeDetails(shape: shape)
}
```
Polymorphism in iOS : This link also have clean Architecture explaination  https://www.youtube.com/watch?v=ydC7Gtf4B18
Once again Visit this page : https://medium.com/@surajglokhande/polymorphism-in-ios-swift-3c16a4261f83



