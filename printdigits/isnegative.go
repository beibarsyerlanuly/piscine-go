package main

import "fmt"

func main() {
   var a bool = true
   var b bool = false
   if ( a && b ) {
      fmt.Printf("Line 1 - Condition is true\n" )
   }
   if ( a || b ) {
      fmt.Printf("F\n" )
   }
   
   /* lets change the value of  a and b */
   a = false
   b = true
   if ( a && b ) {
      fmt.Printf("F\n" )
   } else {
      fmt.Printf("F\n" )
   }
   if ( !(a && b) ) {
      fmt.Printf("T\n" )
   }
}