# Your Code Here
def map(source)
  result = []
  source.length.times do |index|
    result << yield(source[index])
  end
  result
end

def reduce(source, initial_value = nil)
  if initial_value
    acc = initial_value
    i = 0
  else
    acc = source[0]
    i = 1
  end
  
  while i < source.length do
    acc = yield(acc, source[i])
    i += 1
  end
  acc
end