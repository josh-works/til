# My Favorite Strftime conventions

```
"Saturday January 23 2021"
%A => day of week ("Monday", "Tuesday")
%B => Month of year ("January", "February")
%Z => Time Zone ("MST")
%e => day of the month 
%Y => Year ("2021")

%r => Same as 12-hr verbose (same as %I:%M:%S %p)
7:10p
```

```ruby
Time.now.strftime("%A %B %e %Y")
=> "Saturday January 23 2021"

Time.now.strftime("%r")
=> "07:11:41 PM"

Time.now.strftime("%r %A %B %e %Y")
=> "07:12:26 PM Saturday January 23 2021"
```
