
## Download debugging resources with debuginfod. Ask before download.
set debuginfod enabled ask

## Disable confirmation requests
set confirm off

## Print structures in an indented format with one member per line
set print pretty on

## Make the list command display COUNT source lines. Setting count to `unlimited` or `0` means there’s no limit.
set listsize 20

## Removes the limit on the number of array elements that GDB will display in the console
set print elements 0

## Print every single identical element in an array, disabling the automatic compression of repetitive values
set print repeats 0

## Display each element of an array in the console output on a new line instead of packing them into a single horizontal block
set print array on

## Display the explicit index number of each element when printing an array
set print array-indexes on

