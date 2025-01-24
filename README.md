# Lua Type Coercion Bug

This repository demonstrates a common, yet subtle, bug in Lua related to type coercion during arithmetic operations. Lua's dynamic typing system allows for implicit type conversions, which can sometimes lead to unexpected results if not handled carefully.

## The Bug

The `foo` function attempts to add 1 to its input `x`. However, if `x` is a boolean value (true or false), Lua implicitly converts it to a number (1 or 0, respectively) before performing the addition.

This behavior may not always be desired, particularly when dealing with boolean flags or values intended to represent true/false states rather than numerical values.

## The Solution

The solution involves explicitly checking the type of the input and handling boolean values separately to avoid unintended numerical conversion.