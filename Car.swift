/*
* The car program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-13
*/

public class Vehicle {

  private var color: String

  private var plateNumber: String

  private var speed = 0

  private var carNum = 1

  private let maxSpeed = 100

  private let speedChange = 20

  private let doorAmount = 4

  /**
  * Initializer used when no input is given.
  */
  init() {
    color = "red"
    plateNumber = "12E4S6"
    carNum = 2
  }

  /**
  * Initializer used when input is given.
  */
  init(carColor: String, plateNum: String) {
    color = carColor
    plateNumber = plateNum
  }

  /**
  * Method used to increase vehicle speed.
  *
  * @return new speed.
  */
  func accelerate() -> Int {
    speed += speedChange
    if speed > maxSpeed {
      print("Speed cannot be greater than max speed of 100.")
      speed = 100
    }
    return speed
  }

  /**
  * Method used to set speed to 0
  *
  * @return new speed.
  */
  func brake() -> Int {
    speed = 0
    return speed
  }

  /**
  * Method used to show car number, color, and plate info.
  */
  func value() -> String {
    let values = "Car " + String(carNum) + " is " + color
    + " and has a plate number of " + plateNumber
    return values
  }
}

print("Input color of car: ")
let carColour = readLine()!
print("Input plate number: ")
let plateInfo = readLine()!
let colorInput = Int(carColour) ?? 0
let plateInput = plateInfo.count
if colorInput == 0 && plateInput != 0 {
  let car1 = Vehicle(carColor: carColour, plateNum: plateInfo)
  let car2 = Vehicle()
  var times = 0
  while times < 6 {
    times += 1
    print("Speed of car after accelerating is", car1.accelerate())
  }
  print("Speed of car after braking is", car1.brake())
  print(car1.value())
  print(car2.value())
} else {
  print("Inputs must both be strings, and have a value")
}
