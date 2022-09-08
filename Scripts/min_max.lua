--Created by Ethan Blum
--Question 1 on Homework 3

function min_max(list, numElems) 
  
  for i, val in ipairs(list) do
    
    if list[i+1] ~= nil then
      
      if list[i+1] > val then
        minVal = val
        minInd = i-1
      end
      
      if list[i+1] < val then
        maxVal = val
        maxInd = i-1
      end
      
    end
    
  end
    return minVal, minInd, maxVal, maxInd 
end 

function hw3q1()
  myList = {4,1,4,5,10,100,2,20} --Assume start index is 0
  numElems = 8 
  minVal, minInd, maxVal, maxInd = min_max(myList,numElems) 
  print ("Minimum value is", minVal)  
  print ("Minimum value is stored at location", minInd) 
  print ("Maximum Value is", maxVal) 
  print ("Maximum value is stored at location", maxInd) 
end