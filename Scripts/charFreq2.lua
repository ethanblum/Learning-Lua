--Created by Ethan Blum
--Question 3 on Homework 3

local meta = {} --for initializing new vars

function meta:new () --create a new meta table
  
  local met = {}
  self.__index = self
  setmetatable(met,self)
  return met
end

function meta:add(key) --calculate and sum totals of frequency
  
  if(self[key])then
    self[key] = self[key] + 1
  else
    self[key] = 1
  end
  
end

function charFrequency(count,str) 
  
  count = {}
  count = meta:new() 
  
  for i = 1, #str do
    local char = str.upper(string.sub(str, i, i)) --set to upper for case issues
    count:add(char)
  end

  for keys,vals in pairs(count) do
    
    if(vals > 1) then --restrict to only frequencies higher than 1
      freqDict[keys] = vals --assign to freqDict metatable
    end
    
  end
  
end 

function hw3q3()
  
  freqDict = {}
  
  freqDict = setmetatable({}, { 
    __tostring = function(freqDict)
      local temp = ""

      for key, value in pairs(freqDict) do 
        temp = temp .. " " .. key .. " " .. value --joins the values together in a long string
      end
      
      return temp
    end})  
 
  charFrequency(freqDict, "ProgrammingLanguageTheory") 

  print(freqDict) --print return from metatable
end