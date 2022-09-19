--Created by Ethan Blum
--Question 2 on Homework 3

function charFrequency(freqDict,str) 

  counts = {}
  for i = 1, #str do
    
    char = str.upper(string.sub(str, i, i)) -- used .upper to prevent case issues
    
    if counts[char] then --calculate totals
      counts[char] = counts[char] + 1 --incremnt existing index
    else
      counts[char] = 1 --create new index
    end
    
  end
  
  for keys,vals in pairs(counts) do --sort totals
    
    if(vals > 1) then --removes any values lower than 1 (stated in the prompt)
      freqDict[keys] = vals --input into freqDict
    end
    
  end
  
end 


function hw3q2()
  
  freqDict = {} 
  charFrequency(freqDict, "ProgrammingLanguageTheory" ) 

  for key, value in pairs(freqDict) do 
      print(key, value) 
  end
end 