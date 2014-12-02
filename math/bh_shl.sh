bh_shl()
{
    local USAGE="Push bits to the left by a number.\n
   bh_shl <number> <bits>\n
   Category  : Calc.\n
   Parameters:
        -h       :  Help.
        bits     :  The number of bits to be pushed.
        number   :  Decimal or hex number (prefixed with '0x' ).\n
   Output:
   \$ bh_shl 4 1
   8
   \$ bh_shl 0x4 1
   8"

    [ $# -lt 2 -o "$1" == '-h' ] && {
        echo -e "${USAGE}"
        return 1
    }

    echo $(($1<<$2))
}
