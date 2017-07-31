# https://www.codewars.com/kata/list-filtering/train/ruby

require 'ap'

def filter_list(l)
  result = []
  l.map {|x| result << x.to_i if x.is_a? Integer}
  result
end

answer = filter_list([1,2,'a','b'])
ap answer
# [1,2]

answer = filter_list([1,'a','b',0,15])
ap answer
# [1,0,15]

answer = filter_list([1,2,'aasf','1','123',123])
ap answer
# [1,2,123]

# Another Way
def filter_list(l)
  l.reject { |x| x.is_a? String }
end

answer = filter_list([1,2,'a','b'])
ap answer
# [1,2]

answer = filter_list([1,'a','b',0,15])
ap answer
# [1,0,15]

answer = filter_list([1,2,'aasf','1','123',123])
ap answer
# [1,2,123]

# Another Solution
def filter_list(l)
l.select{|i| i.is_a?(Integer)}
end

answer = filter_list([1,2,'a','b'])
ap answer
# [1,2]

answer = filter_list([1,'a','b',0,15])
ap answer
# [1,0,15]

answer = filter_list([1,2,'aasf','1','123',123])
ap answer
# [1,2,123]
