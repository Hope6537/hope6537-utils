//
//  Chain.swift
//  SwiftOOP
//
//  Created by Hope6537 on 15-1-26.
//  Copyright (c) 2015年 Hope6537. All rights reserved.
//

import Foundation

class Person{
    var pet : Pet?;
}

class Pet{

    var name : String;
    var toys : [Toy] = [Toy]();
    init(name:String){
        self.name = name;
    }
    var numberOfToys:Int{
        return toys.count;
    }
    var favoriteToy:Toy?{
        if(numberOfToys != 0){
            return toys[0];
        }else{
            return nil;
        }
    }
    
    subscript(i : Int) ->Toy{
        get{
            return toys[i];
        }
        set{
            toys[i] = newValue;
        }
    }
    func printNumberOfToys(){
        print("number is \(numberOfToys)");
    }
}

class Toy{
    var name : String;
    var madein : String?;
    init(name : String){
        self.name = name;
    }
    func getLocation() ->String?{
        if(madein == nil){
            return nil;
        }
        return madein;
    }
}

//根据可选链来访问属性，方法，下标，返回值
func testChain(){
    //field
    let john = Person();
    //这个表达式不能用括号
    if let num1 = john.pet?.numberOfToys{
        print(num1);
    }
    else{
        print("none");
    }
    

    if (john.pet?.name = "snow") != nil{
        print("yes");
    }
    else{
        print("no");
    }
    
    //methods
    if john.pet?.printNumberOfToys() != nil{
        print("yes println");
    }
    else{
        print("no println()");
    }
    //index
    if let name = john.pet?[0].name{
        print(name + "yse");
    }else{
        print("nil no");
    }
    //return value
    if let _ = john.pet?.toys[0].getLocation()?.hasPrefix("china") {
        print("yes");
    }else{
        print("no");
    }
    

}