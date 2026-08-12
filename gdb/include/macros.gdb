
define print_hex_array

  ## Verify if both required arguments (POINTER and COUNT) are provided
  if $argc < 2
    printf "Usage: print_hex_array POINTER COUNT\n"
  else

    ## Cast the pointer to `unsigned char *` once at the start to prevent sign extension
    set $ptr = (unsigned char *) $arg0
    set $count = $arg1
    set $i = 0

    printf "{\n"

    while $i < $count

      ## %4d  — formats the index as a decimal
      ## %02x — formats the byte as hexadecimal with a mandatory leading zero
      printf "  [%d] = 0x%02x\n", $i, $ptr[$i]

      set $i = $i + 1
    end

    printf "}\n"
  end
end

document print_hex_array

  Print an array with decimal indices and hexadecimal values.

  Usage: print_hex_array POINTER COUNT

end

define print_qbyte_array

  set $ary = $arg0.constData()
  set $count = $arg0.size()

  print_hex_array $ary $count
end

document print_qbyte_array

  Print a QByteArray with decimal indices and hexadecimal values.

  Usage: print_qbyte_array QByteArray

end

