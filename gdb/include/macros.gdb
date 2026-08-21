
python

def _print_doc(a: gdb.Value):
  s = a.string() if hasattr(a, 'string') else str(a)
  print(f"{s}")

import __main__

__main__._print_doc = _print_doc

end

alias examine = x

document examine

  Short alias for `x`

  Usage: examine

end

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

define print_qstring_dump
  if $argc == 1
    set $data_p = $arg0.d
    set $raw_data_p = static_cast<const char *>($data_p) + $data_p->offset
    set $size = $data_p->size * 2

    eval "x /%dbx %s", $size, "$raw_data_p"
  else
    help print_qstring_dump
  end
end

document print_qstring_dump

  Print dump of QString

  Usage: print_qstring_dump QSTRING

  Alias: pqsd

end

alias pqsd = print_qstring_dump

document pqsd

  Short alias for `print_qstring_dump`

  Usage: pqsd QSTRING

end

define print_qstring_byte_size
  if $argc == 1
    set $data_p = $arg0.d
    set $size = $data_p->size * 2

    printf "%d\n", $size
  else
    help print_qstring_byte_size
  end
end

document print_qstring_byte_size

  Print size of QString in bytes

  Usage: print_qstring_byte_size QSTRING

  Alias: pqsbs

end

alias pqsbs = print_qstring_byte_size

document pqsbs

  Short alias for `print_qstring_byte_size`

  Usage: print_qstring_byte_size QSTRING

end

define print_qstring_halfword_size
  if $argc == 1
    set $data_p = $arg0.d
    set $size = $data_p->size

    printf "%d\n", $size
  else
    help print_qstring_halfword_size
  end
end

document print_qstring_halfword_size

  Print size of QString in halfwords (2 bytes)

  Usage: print_qstring_halfword_size QSTRING

  Alias: pqshs

end

alias pqshs = print_qstring_halfword_size

document pqshs

  Short alias for `print_qstring_halfword_size`

  Usage: print_qstring_halfword_size QSTRING

end

define print_qstring
  if $argc == 1
    | print /s static_cast<char16_t*>($arg0.d->data()) \
    | sed 's/.*\(u"\(.*\)"\)/\2/'
    ## or
    ## | x /h (const char16_t*) sample4.d->data()
    ## | sed 's/.*u"\(.*\)"/\1/'
    ## or simply
    ## print $arg0.toStdString()
  else
    help print_qstring
  end
end

document print_qstring

  Print the text contents of QString

  Usage: print_qstring QSTRING

  Alias: pqs

end

alias pqs = print_qstring

document pqs

  Short alias for `print_qstring`

  Usage: pqs QSTRING

end

define print_qstring_all
  if $argc == 1
    printf "Content: "
    print_qstring $arg0
    printf "Dump:\n"
    print_qstring_dump $arg0
    printf "Size in bytes: "
    print_qstring_byte_size $arg0
    printf "Size in halfwords: "
    print_qstring_halfword_size $arg0
  else
    help print_qstring_all
  end
end

document print_qstring_all

  Print dump, size in bytes, size in halfwords of QString and QString itself

  Usage: print_qstring_all QSTRING

  Alias: pqsa

end

alias pqsa = print_qstring_all

document pqsa

  Short alias for `print_qstring_all`

  Usage: pqsa QSTRING

end

define print_doc
  ## To print `QString` use `qstr.toStdString().c_str()`
  ## To print `std::string` use `str.c_str()`
  python _print_doc(gdb.parse_and_eval("$arg0"))
end

document print_doc

  Print documentation for the specified program entity

  Usage: print_doc ENTITY

  Alias: doc

end

alias doc = print_doc

document doc

  Short alias for `print_doc`

  Usage: doc ENTITY

end

