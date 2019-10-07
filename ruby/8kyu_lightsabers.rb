# https://www.codewars.com/kata/how-many-lightsabers-do-you-own/train/ruby

require 'awesome_print'

def howManyLightsabersDoYouOwn(name = '')
  if name == "Zach"
    return 18
  end
  return 0
end

# Another Way
def howManyLightsabersDoYouOwn2(name = '')
  return name.downcase == "zach" ? 18 : 0
end

answer = howManyLightsabersDoYouOwn(name = 'Zach')
ap answer
# 18

answer = howManyLightsabersDoYouOwn2(name = 'Zach')
ap answer
# 18

answer = howManyLightsabersDoYouOwn(name = 'Alex')
ap answer
# 0