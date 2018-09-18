# https://www.codewars.com/kata/bulk-up/train/ruby

require 'ap'

def bulk(arr)
  p = 0; c = 0
  if arr!=[]
    (0..arr.length-1).each do |i|
      items = arr[i].split(",")
      (0..items.length-1).each do |item|
        unit = items[item].split("g ")
        units = unit[0].to_f/100
        protein = units * $food[unit[1]][0]
        carbohydrate  = units * $food[unit[1]][1]
        fat = units * $food[unit[1]][2]
        p += protein
        c += (protein * 4) + (carbohydrate * 4) + (fat * 9)
      end
    end
  end
  p = p.to_i if p % 1 == 0
  c = c.to_i if c % 1 == 0
  "Total proteins: #{p} grams, Total calories: #{c}"
end

# food object provided

$food = {
  "chicken" => [20, 5, 10], # per 100g chicken has 20g of protein, 5 grams of carbohydrates and 10 grams of fat.
  "eggs" => [10, 5, 15],    # protein:10g , carbs:5g , fats: 15g
  "salmon" => [27, 0, 10],
  "beans" => [8, 25, 0],
  "bananas" => [1, 23, 0],
  ...
  ...
}

a = ["175g pork, 100g eggs, 25g chocolate", "175g goose, 200g cheddar, 250g milk, 300g kiwi", "100g catfish, 125g parmesan, 75g chocolate, 125g watermelon", "125g chicken, 25g beans, 50g lemons"]

b = ["150g elk, 325g tofu, 150g watermelon", "75g pork, 50g mushrooms, 75g kiwi", "275g rabbit, 325g broccoli, 100g cherries", "225g duck, 200g potatoes, 175g parmesan, 25g wine", "225g rabbit, 125g broccoli"]

c = ["350g goose, 75g mozzarella", "325g beef, 175g tofu, 75g juice", "125g goose, 350g rice", "175g beef, 50g mushrooms", "325g pork, 50g mushrooms", "325g rabbit, 175g cheddar"]

d = ["325g duck, 175g potatoes, 325g bananas", "75g elk, 225g rice", "100g chicken, 50g broccoli", "300g turkey, 325g corn, 175g milk, 50g wine", "150g bass, 75g tomatoes, 275g wine", "200g buffalo, 150g potatoes"]

answer = bulk(a)
ap answer
# "Total proteins: 242.75 grams, Total calories: 3079.5"

answer = bulk(b)
ap answer
# "Total proteins: 354.25 grams, Total calories: 2972.5"

answer = bulk(c)
ap answer
# "Total proteins: 505.25 grams, Total calories: 4888"

answer = bulk(d)
ap answer
# "Total proteins: 327.5 grams, Total calories: 2959"

answer = bulk([])
ap answer
# "Total proteins: 0 grams, Total calories: 0"

answer = bulk(["200g pork"])
ap answer
# "Total proteins: 40 grams, Total calories: 358"
