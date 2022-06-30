# last_tag=$(curl -s -S 'https://registry.hub.docker.com/v2/repositories/luheerathan/jre11/tags/' | jq '."results"[0]["name"]') 
# if [ $last_tag == null ] ; then
# last_tag=""
# fi
# echo $last_tag
# IFS='.'     
# read -ra last_tag_array <<< "$last_tag"   
# major=${last_tag_array[0]}
# minor=${last_tag_array[1]}
# patch=${last_tag_array[2]}
# IFS=' ' 
# #last_tag_array=( $(grep -Eo '[[:digit:]]+|[^[:digit:]]+' <<<"$last_tag") ) 
# echo ${last_tag_array}

# patch=$(($patch + 1))
# minor=$(($minor + 1))
# major=$(($major + 1))
# tag="v$major.$minor.$patch"
# echo $tag

# last_tags=()
# i=1
# while :
# do
#     retrieved_tags=( $(curl -s -S 'https://registry.hub.docker.com/v2/repositories/library/java/tags/?page='$i'&page_size=100' | jq '."results"[]["name"]') )
#     last_tags=( ${last_tags[@]} ${retrieved_tags[@]} )
#     if [ ${#retrieved_tags[@]} -lt 99 ] ; then
#         break
#     fi
#     i=$(($i +1))
    
# done

          last_tags=()
          i=1
          while :
          do
              retrieved_tags=( $(curl -s -S 'https://registry.hub.docker.com/v2/repositories/luheerathan/ballerina-jvm-runtime/tags/?page='$i'&page_size=100' | jq '."results"[]["name"]') )
              last_tags=( ${last_tags[@]} ${retrieved_tags[@]} )
              if [ ${#retrieved_tags[@]} -lt 99 ] ; then
                  break
              fi
              i=$(($i +1))
              
          done
          echo "last tag is ${last_tags[*]}"