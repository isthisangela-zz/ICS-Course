title = 'Table of Contents'
names = ['Chapter 1: Getting Started',
       'Chapter 2: Numbers',
       'Chapter 3: Letters']
pages = [1, 9, 13]
lwidth = 30
rwidth = 10

puts title.center(lwidth + rwidth)

num = 0
while num < names.length
       puts names[num].ljust(lwidth) + pages[num].to_s.rjust(rwidth)
       num = num + 1
end
