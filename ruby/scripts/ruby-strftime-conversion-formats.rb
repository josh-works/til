# based off https://gist.github.com/akshaymohite/8578315
# and https://rubyinrails.com/2013/09/12/strftime-format-time-in-ruby/

# Function to print strftime results
def print_strftime_formats(a,cur_date)
	a.each do |format|
		b = "%#{format}"
		output = cur_date.strftime(b)
		puts "t.strftime('#{b}'), => #{output}"
	end
end

a = ('a'..'z').to_a
A = ('A'..'Z').to_a

cur_date = Time.now

# calling and printing strftime results on current date
puts "DateTime: #{cur_date}\n"
puts "\n\nFor a to z"
print_strftime_formats(a,cur_date)
puts "\n\nFor A to Z"
print_strftime_formats(A,cur_date)

puts "\n\nAnd here's a random mix-and-match"
first = "%#{a.sample}"
second = "%#{a.sample}"
third = "%#{A.sample}"
fourth = "%#{A.sample}"
time = Time.now.strftime("#{first} #{second} #{third} #{fourth}")
puts time

puts "\nthe format for the above string is:"
puts "\n#{first} #{second} #{third} #{fourth}"