/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var coll:[Any]=[23.68,32,"Harman",true]
print(coll)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in coll{
    if let item = i as? Int{
        print("The integer has a value of \(i)")
    }
    else if let item = i as? Double{
        print("The double has a value of \(i)")
    }
    else if let item = i as? String{
        print("The string has a value of \(i)")
    }
    else if let item = i as? Bool{
        print("The bool has a value of \(i)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dict : [String:Any] = ["Harman":1,"Navreet":true,"Gurvansh":67.8,"Diksha":"45"]
print(dict)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total:Double=0
for (key,value) in dict{
    if let val=value as? Int{
        total+=Double(val)
    }
    else if let val = value as? Double{
        total+=val
    }
    else if let val = value as? String{
        total+=1.0
    }
    else if let val = value as? Bool{
        if val==true{
            total+=2.0
        }
        else{
            total-=3.0
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2:Double=0
for (key,value) in dict{
    if let val=value as? Int{
        total2+=Double(val)
    }
    else if let val = value as? Double{
        total2+=val
    }
    else if let val = value as? String{
        total2+=Double(val)!
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
