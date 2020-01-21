# https://www.codewars.com/kata/583710f6b468c07ba1000017/train/ruby

require 'awesome_print'

def proofread(string)
  string.downcase.gsub('ie','ei').capitalize.gsub(/\. ([a-z])/, &:upcase)
end

ap proofread("SHe wEnt CaNoIenG.")
# "She went canoeing."

ap proofread("He haD iEght ShOTs of CAffIEne")
# "He had eight shots of caffeine"

ap proofread("THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd.")
# "The neighbour's ceiling fell on his head. The weight of it crushed him to the ground."

ap proofread("ThE kiDs enJoYEd the SLiegh RidE.")
# "The kids enjoyed the sleigh ride."

ap proofread("SHE did NOT diegn to GUESS her NIEGHBOUR'S wieght.")
# "She did not deign to guess her neighbour's weight."

ap proofread("They had to fIEgn thIEr appreciation for her bIEge tights.")
# "They had to feign their appreciation for her beige tights.")

ap proofread("Niether of the fencers wanted to forfiet the match. They both expected to sieze victory.")
# "Neither of the fencers wanted to forfeit the match. They both expected to seize victory.")

ap proofread("Protien intAkE miGHt afFect aNy pOteNtIaL wieght LOSs.")
# "Protein intake might affect any potential weight loss." )

ap proofread("MargArEt cAn't eVen concIEve of foRegOing the pARty to finisH her paPEr.")
# "Margaret can't even conceive of foregoing the party to finish her paper." )

ap proofread("IN the wINter, it's NICE to gO for a sliegh rIDe")
# "In the winter, it's nice to go for a sleigh ride")

ap proofread("The mAN's ONly pURpose in lIFe is to decIEve his wIFe.")
# "The man's only purpose in life is to deceive his wife.")

ap proofread("She LifTeD heR ViEL. The ShIeK LooKeD aT hER ExPeCtAnTlY")
# "She lifted her veil. The sheik looked at her expectantly")

ap proofread("PetEr Was Not Sure of WHAt he WAs sEIEng. HE had To RIEn in HIs SHock.")
# "Peter was not sure of what he was seeing. He had to rein in his shock." )

ap proofread("That is OnE lonG frieghT traiN thAt's Blocking The Railway Crossing.")
# "That is one long freight train that's blocking the railway crossing.")

ap proofread("")
# ""

# another way
def proofread1(string)
  return "" if string == ""
  string.downcase!
  string.gsub!("ie","ei")
  string.gsub!("ie","ei")
  string.gsub!("ie","ei")
  x = string.split(". ").map {|sen| sen.capitalize!}.join(". ")
end

ap proofread1("SHe wEnt CaNoIenG.")
# "She went canoeing."

ap proofread1("He haD iEght ShOTs of CAffIEne")
# "He had eight shots of caffeine"

ap proofread1("THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd.")
# "The neighbour's ceiling fell on his head. The weight of it crushed him to the ground."

ap proofread1("ThE kiDs enJoYEd the SLiegh RidE.")
# "The kids enjoyed the sleigh ride."

ap proofread1("SHE did NOT diegn to GUESS her NIEGHBOUR'S wieght.")
# "She did not deign to guess her neighbour's weight."

ap proofread1("They had to fIEgn thIEr appreciation for her bIEge tights.")
# "They had to feign their appreciation for her beige tights.")

ap proofread1("Niether of the fencers wanted to forfiet the match. They both expected to sieze victory.")
# "Neither of the fencers wanted to forfeit the match. They both expected to seize victory.")

ap proofread1("Protien intAkE miGHt afFect aNy pOteNtIaL wieght LOSs.")
# "Protein intake might affect any potential weight loss." )

ap proofread1("MargArEt cAn't eVen concIEve of foRegOing the pARty to finisH her paPEr.")
# "Margaret can't even conceive of foregoing the party to finish her paper." )

ap proofread1("IN the wINter, it's NICE to gO for a sliegh rIDe")
# "In the winter, it's nice to go for a sleigh ride")

ap proofread1("The mAN's ONly pURpose in lIFe is to decIEve his wIFe.")
# "The man's only purpose in life is to deceive his wife.")

ap proofread1("She LifTeD heR ViEL. The ShIeK LooKeD aT hER ExPeCtAnTlY")
# "She lifted her veil. The sheik looked at her expectantly")

ap proofread1("PetEr Was Not Sure of WHAt he WAs sEIEng. HE had To RIEn in HIs SHock.")
# "Peter was not sure of what he was seeing. He had to rein in his shock." )

ap proofread1("That is OnE lonG frieghT traiN thAt's Blocking The Railway Crossing.")
# "That is one long freight train that's blocking the railway crossing.")

ap proofread1("")
# ""