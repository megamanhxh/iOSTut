//
//  main.swift
//  Tutorial 2/Users/megamanhxh/Desktop/Tutorial 2/Tutorial 2/main.swift
//
//  Created by Megamanhxh on 9/11/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import Foundation

var car1 = Car(brand: "Toyota", maxSpeed: 100, currentSpeed: 30);
car1.printData();

var car2 = Car(brand: "Nissan");
car2.printData();

var car3 = Car();
car3.printData();

car1.currentSpeed = 200;

car3.increaseSpeedBy(10);

car3.increaseSpeedBy(10, numberOfTimes: 2);

var res = car1.applyOperation(10, car1.doubleTheNumber);
println(res);
res = car1.applyOperation(20, car1.tripleTheNumber);
println(res);

res = car2.applyOperation(10, {(number:Int) -> Int
    in
    return number * 2
})

println(res);

res = car3.applyOperation(10, { number in number * 3 })
println(res);

res = car3.applyOperation(10, { $0 * 3 })
println(res);