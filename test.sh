touch "test/$(date +%s)"
count=$(ls test | wc -l)
echo "$count"
if [ $count -gt 10 ] ; then
  echo "Deleting oldest"
  rm $(ls -vd test/* | head -n 1)
else
  echo "Not full"
fi
