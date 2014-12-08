# encoding: UTF-8

# News
#- 4.times do |i|
#  new = Reading.find_or_create_by_name(title: "Noticia #{i}", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
#  new.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
#  new.save!
#end

# About us section
about = Section.find_or_create_by_name("aboutus", title: "Qui som?", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
about.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
about.save!

# Units section
units = Section.find_or_create_by_name("units", title: "Unitats", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
units.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
units.save!

# Caps i aqueles sections
caps = Section.find_or_create_by_name("caps", title: "Caps i aquel·les?", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
caps.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
caps.save!

# Sleep
sleep = Section.find_or_create_by_name("sleep", title: "Dormir al cau", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
sleep.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
sleep.save!

# Signin
signin = Section.find_or_create_by_name("signin", title: "Vull apuntar-m'hi!", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
signin.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
signin.save!

# History
history = Section.find_or_create_by_name("history", title: "Caps i aquel·les?", content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
history.image = File.open(File.join(Rails.root, 'app/assets/images/units.png'))
history.save!

# Installations section
insta = Slideshow.find_or_create_by_name("installations")
5.times do |i|
  slide = File.open(File.join(Rails.root, "app/assets/images/imatge-#{i}.jpg"))
  insta.slides << Slide.create(image: slide, title: "Foto instalacio #{i}")
  insta.save!
end

# Cover section
cover = Slideshow.find_or_create_by_name("covers")
3.times do |i|
  slide = File.open(File.join(Rails.root, "app/assets/images/portada-#{i}.jpg"))
  cover.slides << Slide.create(image: slide, title: "Foto portada #{i}")
  cover.save!
end
