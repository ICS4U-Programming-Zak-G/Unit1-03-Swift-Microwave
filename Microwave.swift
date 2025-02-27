//
//  Microwave.swift
//
//  Created by Zak Goneau
//  Created on 2025-02-25
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Says how long it takes to cook a certain item by quantity

// Import library
import Foundation

// Declare constants 
let PIZZA_TIME: Float = 0.45
let SUB_TIME: Float = 1.0
let SOUP_TIME: Float = 1.45

// Define function to calculate food cooking time
func cookTime() {

    // Introduce program to user
    print("This program says how long it takes to cook a certain item by quantity.")

    // Get user input
    print("Enter a food (sub, pizza, soup): ")

    // Assign input to variable and check if valid
    guard let foodString = readLine(), foodString == "sub" || foodString == "pizza" || foodString == "soup" else {

        // Tell user invalid input if input isn't valid'
        print("That is not a valid food option.")

        // Exit function
        return
    }


    // Get quantity from user
    print("Please enter a quantity to reheat (1-3): ")

    // Try to assign input as string and convert into an integer
    guard let quantityString = readLine(), let quantityInt = Int(quantityString) else {

        // Tell user invalid input if failed conversion
        print("Invalid input. It must be a number from 1-3.")

        // Exit function
        return
        }
        
    // Check if number isn't within range
    if (quantityInt >= 1 && quantityInt <= 3) {

        // Determine base time to begin
        let baseTime: Float
        if foodString == "pizza" {
            baseTime = PIZZA_TIME
        } else if foodString == "sub" {
            baseTime = SUB_TIME
        } else {
            baseTime = SOUP_TIME
        }

        // Calculate min and sec for cooking time
        let totalTime = baseTime * Float(quantityInt)
        let minuteInt = Int(totalTime)
        let secondsFinal = (totalTime - Float(minuteInt)) * 60.0

        // Print result to user
        print("To cook \(quantityInt) \(foodString)(s) will take \(minuteInt)m \(Int(secondsFinal))s")

    // Otherwise quantity is invalid, tell user
    } else {
        print("\(quantityString) is not a number from 1-3.")
    }
}
// Call function
cookTime()
