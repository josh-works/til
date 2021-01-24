# How to print all strftime results

```ruby
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
```

# Resources


- [strftime – Format Date Time in Ruby](https://rubyinrails.com/2013/09/12/strftime-format-time-in-ruby/)