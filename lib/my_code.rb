def map (array)
  final=[]
  counter=0  
  while counter<array.size do
    final.push(yield(array[counter]))
    counter+=1
  end
  final
end



def reduce (source_array, starting_point=nil)
  if starting_point
    sum=starting_point
    i=0
  else 
    sum=source_array[0]
    i=1
  end
    
  while i<source_array.size do
    sum=yield(sum,source_array[i])
    i+=1
  end
  sum
end

