title = 'Table of Contents'
names = ['Chapter 1: Getting Started',
       'Chapter 2: Numbers',
       'Chapter 3: Letters']
pages = [1, 9, 13]
lwidth = 30
rwidth = 10

puts title.center(lwidth + rwidth)

names.each do |nm|
  pages.each do |pg|
    puts nm.ljust(lwidth) + pg.rjust(rwidth)
  end
end
