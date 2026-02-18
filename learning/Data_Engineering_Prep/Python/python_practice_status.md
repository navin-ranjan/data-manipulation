# Python Practice Exercises

> **Instructions:** Complete the exercises below for the current topic. After completing, clear your solutions and move to the next topic.

---

## Current Topic: _______________

**Status:** [ ] Not Started | [ ] In Progress | [ ] Completed

---

## Topic 1: Variables, Data Types & Operators

### Exercise 1.1: Variable Types
```python
# Create variables of each type and print their types
# Your code here:

```

### Exercise 1.2: Type Conversion
```python
# Convert the following:
# "42" to integer
# 3.14 to integer
# 100 to string
# Your code here:

```

### Exercise 1.3: Arithmetic Operators
```python
# Given a = 17, b = 5
# Calculate and print: sum, difference, product, division, floor division, modulus, power
# Your code here:

```

### Exercise 1.4: Comparison & Logical Operators
```python
# Given x = 10, y = 20, z = 10
# Write expressions to check:
# 1. Is x equal to z?
# 2. Is y greater than x?
# 3. Is x not equal to y?
# 4. Is x equal to z AND y > x?
# 5. Is x > y OR z < y?
# Your code here:

```

### Exercise 1.5: Practice Problem
```python
# Calculate the area and perimeter of a rectangle
# Given: length = 10, width = 5
# Print results with descriptive messages
# Your code here:

```

---

## Topic 2: Control Flow

### Exercise 2.1: If-Else
```python
# Write a program to check if a number is positive, negative, or zero
number = int(input("Enter a number: "))
# Your code here:

```

### Exercise 2.2: Grade Calculator
```python
# Given a score (0-100), determine the grade
# 90-100: A, 80-89: B, 70-79: C, 60-69: D, below 60: F
score = 85
# Your code here:

```

### Exercise 2.3: For Loop - Print Pattern
```python
# Print the following pattern:
# *
# **
# ***
# ****
# *****
# Your code here:

```

### Exercise 2.4: For Loop - Sum of Numbers
```python
# Calculate the sum of all numbers from 1 to 100
# Your code here:

```

### Exercise 2.5: While Loop - Guessing Game
```python
# Create a simple guessing game
# Secret number is 7, user has 3 attempts
# Your code here:

```

### Exercise 2.6: Loop Control
```python
# Print all even numbers from 1 to 20, skip 10, stop at 18
# Your code here:

```

### Exercise 2.7: Practice Problem - FizzBuzz
```python
# Print numbers 1 to 30
# If divisible by 3: print "Fizz"
# If divisible by 5: print "Buzz"
# If divisible by both: print "FizzBuzz"
# Otherwise: print the number
# Your code here:

```

---

## Topic 3: Functions & Lambda

### Exercise 3.1: Basic Function
```python
# Write a function to calculate the area of a circle
# Formula: area = pi * radius^2
# Your code here:

```

### Exercise 3.2: Function with Multiple Parameters
```python
# Write a function that takes a name and age, returns a formatted string
# Example: "John is 30 years old"
# Your code here:

```

### Exercise 3.3: Default Parameters
```python
# Write a function to calculate simple interest
# Parameters: principal, rate (default 5%), time (default 1 year)
# Formula: SI = (P * R * T) / 100
# Your code here:

```

### Exercise 3.4: *args and **kwargs
```python
# Write a function that accepts any number of numbers and returns their average
# Your code here:

```

```python
# Write a function that accepts any number of keyword arguments and prints them
# Your code here:

```

### Exercise 3.5: Multiple Return Values
```python
# Write a function that takes a list and returns min, max, and average
# Your code here:

```

### Exercise 3.6: Lambda Functions
```python
# Write lambda functions for:
# 1. Cube of a number
# 2. Check if number is even (return True/False)
# 3. Get first character of a string
# Your code here:

```

### Exercise 3.7: Lambda with map, filter, reduce
```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Use map to square all numbers
# Your code here:

# Use filter to keep only even numbers
# Your code here:

# Use reduce to find the product of all numbers
# Your code here:

```

### Exercise 3.8: Practice Problem
```python
# Write a function that takes a list of numbers and returns a dictionary with:
# "count": number of elements
# "sum": sum of all numbers
# "avg": average of numbers
# "min": minimum value
# "max": maximum value
# Your code here:

```

---

## Topic 4: Data Structures

### Exercise 4.1: List Operations
```python
# Start with: fruits = ["apple", "banana", "cherry"]
# 1. Add "orange" to the end
# 2. Insert "mango" at index 1
# 3. Remove "banana"
# 4. Find the index of "cherry"
# 5. Print the final list
# Your code here:

```

### Exercise 4.2: List Comprehensions
```python
# Using list comprehension:
# 1. Create a list of squares from 1 to 10
# 2. Create a list of even numbers from 1 to 20
# 3. Create a list of words longer than 3 characters from ["hi", "hello", "hey", "world"]
# Your code here:

```

### Exercise 4.3: Tuple Operations
```python
# Given: coordinates = (10, 20, 30)
# 1. Unpack into x, y, z
# 2. Find the index of 20
# 3. Count how many times 10 appears
# Your code here:

```

### Exercise 4.4: Set Operations
```python
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# Find:
# 1. Union
# 2. Intersection
# 3. Difference (set1 - set2)
# 4. Symmetric difference
# Your code here:

```

### Exercise 4.5: Dictionary Operations
```python
# Create a dictionary for a student with: name, age, grades (list of 3 subjects)
# 1. Add a new key "city"
# 2. Update the age
# 3. Calculate and add average grade
# 4. Print all keys and values
# Your code here:

```

### Exercise 4.6: Nested Data Structures
```python
# Given:
students = {
    "John": {"math": 85, "science": 90, "english": 78},
    "Jane": {"math": 92, "science": 88, "english": 95},
    "Bob": {"math": 75, "science": 80, "english": 72}
}

# 1. Find Jane's science score
# 2. Calculate Bob's average score
# 3. Find who has the highest math score
# Your code here:

```

### Exercise 4.7: Practice Problem
```python
# Write a function that takes a string and returns a dictionary with:
# - count of each character
# Example: "hello" -> {'h': 1, 'e': 1, 'l': 2, 'o': 1}
# Your code here:

```

---

## Topic 5: String Manipulation

### Exercise 5.1: String Basics
```python
text = "  Hello, World! Welcome to Python.  "

# 1. Remove leading/trailing whitespace
# 2. Convert to lowercase
# 3. Convert to uppercase
# 4. Replace "World" with "Python"
# Your code here:

```

### Exercise 5.2: String Slicing
```python
text = "Python Programming"

# 1. Get first 6 characters
# 2. Get last 6 characters
# 3. Get every 2nd character
# 4. Reverse the string
# Your code here:

```

### Exercise 5.3: String Formatting
```python
name = "John"
age = 30
salary = 50000.12345

# Format the following using f-strings:
# 1. "My name is John and I am 30 years old"
# 2. "Salary: $50,000.12" (2 decimal places, with comma separator)
# Your code here:

```

### Exercise 5.4: Split and Join
```python
# 1. Split "apple,banana,cherry" by comma
# 2. Join ["Hello", "World"] with space
# 3. Split "Hello World Python" into words
# Your code here:

```

### Exercise 5.5: String Validation
```python
# Write a program that checks if a password is valid
# Rules: at least 8 characters, contains uppercase, contains lowercase, contains digit
password = "Secure123"
# Your code here:

```

### Exercise 5.6: Practice Problem
```python
# Write a function that counts vowels and consonants in a string
# Return a dictionary with counts
# Example: "hello" -> {'vowels': 2, 'consonants': 3}
# Your code here:

```

---

## Topic 6: File Handling

### Exercise 6.1: Write to File
```python
# Create a file "notes.txt" and write 3 lines of text
# Your code here:

```

### Exercise 6.2: Read from File
```python
# Read the file created above and print each line with line number
# Your code here:

```

### Exercise 6.3: Append to File
```python
# Append a new line to the file
# Your code here:

```

### Exercise 6.4: JSON Handling
```python
# Create a dictionary and save it as JSON file
# Then read it back and print
data = {
    "name": "John",
    "age": 30,
    "skills": ["Python", "SQL", "Spark"]
}
# Your code here:

```

### Exercise 6.5: CSV Handling
```python
# Create a CSV file with employee data (name, age, department)
# Then read and display all employees in "IT" department
# Your code here:

```

### Exercise 6.6: Practice Problem
```python
# Write a program that:
# 1. Reads a text file
# 2. Counts frequency of each word
# 3. Saves the result to a new file
# Your code here:

```

---

## Topic 7: Object-Oriented Programming

### Exercise 7.1: Basic Class
```python
# Create a class "Car" with attributes: brand, model, year
# Add a method "get_info()" that returns formatted string
# Create an instance and call the method
# Your code here:

```

### Exercise 7.2: Class with Methods
```python
# Create a class "BankAccount" with:
# - attribute: balance (private)
# - methods: deposit, withdraw, get_balance
# Withdraw should not allow negative balance
# Your code here:

```

### Exercise 7.3: Inheritance
```python
# Create a base class "Animal" with method "speak()"
# Create child classes "Dog" and "Cat" that override speak()
# Your code here:

```

### Exercise 7.4: Class Methods and Static Methods
```python
# Create a class "MathOperations" with:
# - static method: add(a, b)
# - static method: multiply(a, b)
# - class variable: calculation_count
# - class method: get_count()
# Your code here:

```

### Exercise 7.5: Property Decorator
```python
# Create a class "Circle" with:
# - attribute: radius
# - property: area (calculated)
# - property: circumference (calculated)
# - setter for radius (should not allow negative)
# Your code here:

```

### Exercise 7.6: Practice Problem
```python
# Create a class "Employee" with:
# - attributes: name, employee_id, salary
# - class variable: employee_count
# - method: apply_raise(percentage)
# - __str__ method for nice representation
# Create 3 employees and print their info
# Your code here:

```

---

## Topic 8: Exception Handling

### Exercise 8.1: Basic Try-Except
```python
# Write a program that divides two numbers
# Handle ZeroDivisionError
# Your code here:

```

### Exercise 8.2: Multiple Exceptions
```python
# Write a program that:
# 1. Takes a list and index from user
# 2. Prints the element at that index
# Handle IndexError and TypeError
# Your code here:

```

### Exercise 8.3: Else and Finally
```python
# Write a program that opens a file
# Use try-except-else-finally
# Your code here:

```

### Exercise 8.4: Raising Exceptions
```python
# Write a function validate_age(age) that:
# - raises ValueError if age < 0
# - raises ValueError if age > 150
# Your code here:

```

### Exercise 8.5: Custom Exception
```python
# Create custom exception "InsufficientBalanceError"
# Create a BankAccount class that raises this error
# when withdrawal amount > balance
# Your code here:

```

### Exercise 8.6: Practice Problem
```python
# Write a robust calculator that:
# 1. Takes two numbers and an operation (+, -, *, /)
# 2. Handles all possible errors
# 3. Allows user to try again
# Your code here:

```

---

## Topic 9: Modules & Packages

### Exercise 9.1: Math Module
```python
import math

# Calculate:
# 1. Square root of 144
# 2. Ceil of 4.2
# 3. Floor of 4.8
# 4. Factorial of 5
# 5. sin(90 degrees)
# Your code here:

```

### Exercise 9.2: DateTime Module
```python
from datetime import datetime, timedelta

# 1. Print current date and time
# 2. Print date 100 days from now
# 3. Calculate age from birthdate (calculate days lived)
# 4. Format current date as "YYYY-MM-DD"
# Your code here:

```

### Exercise 9.3: Random Module
```python
import random

# 1. Generate random integer between 1 and 100
# 2. Generate random float between 0 and 1
# 3. Pick random element from a list
# 4. Shuffle a list
# 5. Generate random password (8 chars, letters + digits)
# Your code here:

```

### Exercise 9.4: OS Module
```python
import os

# 1. Print current working directory
# 2. List all files in current directory
# 3. Create a new directory "test_dir"
# 4. Check if a file exists
# 5. Join paths safely
# Your code here:

```

### Exercise 9.5: Collections Module
```python
from collections import Counter, defaultdict, namedtuple

# 1. Use Counter to count word frequency in a sentence
# 2. Use defaultdict to group words by first letter
# 3. Use namedtuple to create a Point with x, y coordinates
# Your code here:

```

### Exercise 9.6: Practice Problem
```python
# Create a simple contact management system:
# - Use JSON to save/load contacts
# - Each contact has: name, phone, email
# - Implement: add, delete, search, list all
# Your code here:

```

---

## Topic 10: Advanced Concepts

### Exercise 10.1: Decorators
```python
# Create a decorator "timer" that measures execution time
# Apply it to a function that sums numbers from 1 to 1000000
# Your code here:

```

### Exercise 10.2: Decorator with Arguments
```python
# Create a decorator "repeat" that runs a function n times
# @repeat(3) should run the function 3 times
# Your code here:

```

### Exercise 10.3: Generators
```python
# Create a generator function that:
# 1. Yields squares of numbers from 1 to n
# 2. Yields only even numbers from a list
# Your code here:

```

### Exercise 10.4: Generator Expression
```python
# Rewrite the following using generator expressions:
# 1. Squares of numbers 1-10
# 2. First letters of words in a list
# Your code here:

```

### Exercise 10.5: Context Managers
```python
# Create a context manager "FileManager" that:
# - Opens a file on entry
# - Closes the file on exit
# - Handles exceptions
# Your code here:

```

### Exercise 10.6: Practice Problem
```python
# Create a data pipeline using generators:
# 1. Generator that reads numbers from a file
# 2. Generator that filters even numbers
# 3. Generator that squares numbers
# 4. Generator that takes first n results
# Chain them together
# Your code here:

```

---

## Bonus Challenges

### Challenge 1: Password Generator
```python
# Create a password generator that:
# - Takes length as input
# - Includes uppercase, lowercase, digits, special chars
# - Guarantees at least one of each type
# Your code here:

```

### Challenge 2: Data Analyzer
```python
# Create a class that analyzes a list of numbers:
# - Methods: mean, median, mode, std_dev
# - Handle empty list gracefully
# - Use appropriate exceptions
# Your code here:

```

### Challenge 3: File Organizer
```python
# Create a script that:
# - Takes a directory path
# - Organizes files by extension into subfolders
# - Example: .txt files go to "txt/" folder
# Your code here:

```

### Challenge 4: Log Parser
```python
# Parse a log file and extract:
# - Number of ERROR, WARNING, INFO messages
# - Most common error messages
# - Errors in last hour
# Your code here:

```

---

## Progress Tracker

| Topic | Status | Date Completed | Notes |
|-------|--------|----------------|-------|
| 1. Variables, Data Types & Operators | [ ] | | |
| 2. Control Flow | [ ] | | |
| 3. Functions & Lambda | [ ] | | |
| 4. Data Structures | [ ] | | |
| 5. String Manipulation | [ ] | | |
| 6. File Handling | [ ] | | |
| 7. Object-Oriented Programming | [ ] | | |
| 8. Exception Handling | [ ] | | |
| 9. Modules & Packages | [ ] | | |
| 10. Advanced Concepts | [ ] | | |
| Bonus Challenges | [ ] | | |

---

## Instructions for Reusing This File

1. **Before starting a new topic:**
   - Clear all your solutions from the previous topic
   - Update the "Current Topic" field at the top
   - Mark the topic as "In Progress"

2. **After completing a topic:**
   - Mark the topic as "Completed" in the Progress Tracker
   - Add the completion date and any notes
   - Clear your solutions before moving to the next topic

3. **Best Practices:**
   - Try to solve without looking at solutions first
   - Use the theory file (`python_theory.md`) as reference
   - Write clean, commented code
   - Test your solutions with different inputs

---

**Happy Coding!**