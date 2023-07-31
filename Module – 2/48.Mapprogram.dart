
void main()
{

  Map<String, int> countryDialingCode =
  {         // Method 1: Using Literal
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };

// Method 2: Using Constructor
  Map<String, String> fruits = Map();
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";

  // returns true if the KEY is present in list
  fruits.containsKey("apple");

  // Update the VALUE
  fruits.update("apple", (value) => "green");

  // removes KEY and it's VALUE and change the VALUE
  fruits.remove("apple");

  print(fruits["apple"]);


  fruits.forEach((key, value) => print("key: $key and value: $value"));   // Using Lambda
  print("=================================================================");
  countryDialingCode.forEach((key, value) => print("key: $key and value: $value"));   // Using Lambda

}