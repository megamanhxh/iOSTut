//
//  main.swift
//  Tutorial
//
//  Created by Megamanhxh on 9/8/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import Foundation

println("Hello, World!");

var var1: Int32 = 10;
var var2: Float = 10.0;
var var3: Bool = true;

var floatVar: Float = 10;
var stringVar: String;

//var1 = "Swift" //impossible

stringVar = "Hello";
stringVar = var1.description + " " + stringVar + " " + stringVar;


println("Number: " + var1.description);

println(stringVar);

let constValue : Int32 = 100;
//constValue = 200; //impossible

let floatConstValue : Float = 100.5;

var maxHeight : Float = 10;

if (maxHeight < 10) {
    println("it is a short building");
} else if (maxHeight >= 10 || maxHeight <= 20) {
    println("it is a normal building");
} else {
    println("it is long building");
}

var character : Character = "a";

switch (character) {
case "A" :
    println("hey!");
case "a" :
    println("oh, that is not caps");
default :
    println("nothing");
}

for i in 1...9 {
    println("\(i) ");
}

for i in 1..<10 {
    println("\(i) ");
}

for var i:Int = 0; i<10; i++ {
    println("\(i) ");
}

var x:Int = 0;

while x < 10 {
    println("\(x)");
    x++;
}

x = 0;

do {
    println("\(x)");
    x++;
} while x < 10;


func returnSent (name:String) -> (String) {
    return "My name is " + name;
}

var (j1,j2,j3) = (10,returnSent("Mahdi"),20);
println(j1);println(j2);println(j3);

var student = ["Ali","Mohammed","Mahdi"];

func goodStudent (j:Array<String>) {
    for name in j {
        println(name + " is a good person");
    }
}

goodStudent (student);

println(student);

student += ["Sayed", "Jassem"];

goodStudent (student);

println(student.count);

let ages = [18, 19, 20, 20];	
println(ages);
//ages += [20];

var myClass = ["Alla":19,"Jassem":7];
for (name,age) in myClass {
    println("\(name) is \(age) year old");
}

println(myClass["Alla"]);

myClass["Alla"] = 20;

println(myClass["Alla"]);
