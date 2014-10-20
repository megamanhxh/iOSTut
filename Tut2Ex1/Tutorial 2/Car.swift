//
//  Car.swift
//  Tutorial 2
//
//  Created by Megamanhxh on 9/15/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import Foundation

class Car {
    var brand:String
    var maxSpeed:Int
    var currentSpeed:Int = 0 {
        willSet {
            println("New speed will be set to \(newValue)" )
        }
        didSet {
            if currentSpeed > maxSpeed {
                currentSpeed = oldValue;
            }
            println("Value has changed from \(oldValue) to \(currentSpeed)")
        }
    }
    
    var Brand:String {
        get { return brand }
        set (newBrand) { brand = newBrand }
    }
    
    var MaxSpeed:Int {
        get { return maxSpeed }
        set (newMaxSpeed) { maxSpeed = newMaxSpeed }
    }
    
    var CurrentSpeed:Int {
        get { return currentSpeed }
        set (newCurrentSpeed) {currentSpeed = newCurrentSpeed}
    }
    
    init(brand:String, maxSpeed:Int, currentSpeed:Int) {
        self.brand = brand;
        self.maxSpeed = maxSpeed;
        self.currentSpeed = currentSpeed;
    }
    
    var description: String {   // get can be eliminated
        return "Brand: \(brand), Current Speed: \(currentSpeed), MaxSpeed: \(maxSpeed)"
    }
    
    convenience init() {
        self.init(brand: "Unknown", maxSpeed: 0, currentSpeed: 0)
    }
    
    convenience init(brand:String) {
        self.init(brand: brand, maxSpeed: 0, currentSpeed: 0)
    }
    
    convenience init(brand:String, maxSpeed:Int) {
        self.init(brand: brand, maxSpeed: maxSpeed, currentSpeed: 0)
    }
    
    func printData() {
        println("\(brand), \(maxSpeed) km/h, \(currentSpeed) km/h");
    }
    
    func increaseSpeedBy(amount:Int) {
        self.currentSpeed += amount
    }
    
    func increaseSpeedBy(amount:Int, numberOfTimes: Int) {
        self.currentSpeed += amount * numberOfTimes
    }
    
    func doubleTheNumber (number:Int) -> Int {
        return number * 2;
    }
    
    func tripleTheNumber(number: Int) -> Int {
        return number * 3
    }
    
    func applyOperation(number:Int, operation: Int -> Int ) -> Int
    {
        return operation(number);
    }
}