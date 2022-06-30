array=(1 2 3 4 5)
# for (( i=1; i<=${#array[@]}; i++ ))
# do
#     echo "${array[$i-1]}"
    
# done

# for (( i=1; i<${#array[@]}; i++ ))
# do
    
#     test_var="${array[$i+1]}"
#     test_var_array=( $(grep -Eo '[0-9]+' <<<"$test_var") )
#     first=${test_var_array[0]}
#     echo $first
#     if [ first = "\n" ]; then
#         echo "First is empty"
#     fi
# done

if [ $major -eq $prev_major ] && [ $minor -eq $prev_minor ] && [ $patch -eq $prev_patch ] && [ $major -eq $next_major ] && [ $minor -eq $next_minor ] && [ $patch -eq $(($next_patch - 1)) ] ; then
                  do_change_latest=0
                  do_change_major=0
                  do_change_major_minor=0
    
              elif [ $major -eq $prev_major ] && [ $minor -eq $prev_minor ] && [ $(("$patch" >= "$prev_patch")) = 1 ] && [ $major -le $next_major ] && [ $minor -lt $next_minor ]; then
                  do_change_latest=0
                  do_change_major=0
                  do_change_major_minor=1

              elif [ $major -eq $prev_major ] && [ $minor -ge $prev_minor ] && [ $next_major -gt $major ] ; then
                  do_change_latest=0
                  do_change_major=1
                  do_change_major_minor=1
              fi