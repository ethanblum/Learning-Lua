--Created by Ethan Blum
--Question 1 on Homework 3

function min_max(list, numElems) --I didn't use numElems, but I left for consistency
  local begin = true --used for initialization
  for i, val in ipairs(list) do

    if begin then --initialize var to prevent comparison errors
      maxVal = val
      minVal = val
    end
      
      if val ~= nil then
        
        if maxVal < val then -- new val is greater than previous max
          
          maxVal = val
          maxInd = i
        
        end
        
        if minVal > val then -- new val is less than previous min
          
          minVal = val
          minInd = i
        
        end
        
      end
      begin = false --forces init to only run once
  end
  
  return minVal, minInd, maxVal, maxInd 
end 

function hw3q1()
  myList = {4,1,4,5,10,100,2,20} --Assume start index is 0
  numElems = 8 
  minVal, minInd, maxVal, maxInd = min_max(myList,numElems) 
  print ("Minimum value is", minVal)  
  print ("Minimum value is stored at location ", minInd) 
  print ("Maximum Value is", maxVal) 
  print ("Maximum value is stored at location ", maxInd) 
end