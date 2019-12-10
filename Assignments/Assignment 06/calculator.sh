# !/bin/bash 
  
echo "Enter Two numbers: "
read a 
read b 
  
echo "Enter Operation: "
read ch 

case $ch in
  +)res=`echo $a + $b | bc` 
  ;; 
  -)res=`echo $a - $b | bc` 
  ;; 
  *)res=`echo $a \* $b | bc` 
  ;; 
esac
echo "Result: $res"