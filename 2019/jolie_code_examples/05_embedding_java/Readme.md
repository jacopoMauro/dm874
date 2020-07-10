Embeds a Java program to sum two numbers into a service

## Manipulating Jolie values in Java

In this section we deepen the usage of the class `Value` which allows for the management of Jolie value trees within Java.

#### Creating a value.

First of all, we need to create a Value in Java as we would do in Jolie. The following Java code creates a Value named `v`.

```text
Value v = Value.create();
```

#### Getting the vector elements.

In each Jolie tree, a node is a vector. To access/get the vector elements of a node, you can use the method `getChildren( String subnodeName )` which returns the corresponding `ValueVector` of the subnode `subnondeName`. In the following example we get all the vector elements of the subnode `subnode1`.

```text
ValueVector vVector = v.getChildren("subnode1");
```

All the items of a ValueVector are Value objects. To access the Value element at index _i_ it is possible to use the method `get( int index )`. In the following example we access the third element of the subnode `subnode1` where 0 is the index of the first element.

```text
ValueVector vVector = v.getChildren("subnode1");
Value thirdElement = vVector.get( 2 );
```

#### Setting the value of an element.

It is possible to use the method `setValue( ... )` for setting the value content of an element as in the following example:

```text
ValueVector vVector = v.getChildren("subnode1");
Value thirdElement = vVector.get( 2 );
thirdElement.setValue("Millennium Falcon");
```

#### Getting the value of an element.

Once accessed a vector element \(a value in general\), it is possible to get its value by simply using one of the following methods depending on the type of the content:

* `strValue()`
* `intValue()`
* `longValue()`
* `boolValue()`
* `doubleValue()`
* `byteArrayValue()`.

In the following example we suppose to print out the content of the third element of the subnode `subnode1` supposing it is a string.

```text
ValueVector vVector = v.getChildren("subnode1");
Value thirdElement = vVector.get( 2 );
thirdElement.setValue("Millennium Falcon");
System.out.println( thirdElement.strValue() );
```
