void main()
{
  Set<int> numbersSet = Set();

  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(4);
  numbersSet.add(5);
  numbersSet.add(6);
  numbersSet.add(0);

  numbersSet.contains(8);        // returns true if the element is found in set
  numbersSet.remove(5);          // returns true if the element was found and deleted
  numbersSet.isEmpty;             // returns true if the Set is empty
  numbersSet.length;              // returns number of elements in Set

  numbersSet.forEach((element) => print(element));
}