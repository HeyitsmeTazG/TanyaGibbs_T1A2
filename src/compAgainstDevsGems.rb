require 'artii'

a = Artii::Base.new :font => 'shadow'
puts a.asciify("Computers")

a = Artii::Base.new :font => 'shadow'
puts a.asciify("   Against")

a = Artii::Base.new :font => 'shadow'
puts a.asciify("Developers!")
# artii 'Art!'