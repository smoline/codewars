# https://www.codewars.com/kata/51f2b4448cadf20ed0000386/train/ruby

require 'awesome_print'

def remove_url_anchor(url)
  url.split('#').first
end

ap remove_url_anchor("www.codewars.com#about")
# "www.codewars.com"

ap remove_url_anchor("www.codewars.com/katas/?page=1#about")
# "www.codewars.com/katas/?page=1"

ap remove_url_anchor("www.codewars.com/katas/")
# "www.codewars.com/katas/"

# another way
def remove_url_anchor1(url)
  removesub = url[/[^#]+/]
end

ap remove_url_anchor1("www.codewars.com#about")
# "www.codewars.com"

ap remove_url_anchor1("www.codewars.com/katas/?page=1#about")
# "www.codewars.com/katas/?page=1"

ap remove_url_anchor1("www.codewars.com/katas/")
# "www.codewars.com/katas/"

# another way
def remove_url_anchor2(url)
  url.split("#").shift
end

ap remove_url_anchor2("www.codewars.com#about")
# "www.codewars.com"

ap remove_url_anchor2("www.codewars.com/katas/?page=1#about")
# "www.codewars.com/katas/?page=1"

ap remove_url_anchor2("www.codewars.com/katas/")
# "www.codewars.com/katas/"
