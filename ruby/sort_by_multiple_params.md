# `sort_by` to sort multiple params

```ruby
tasks = 
tasks.sort_by{ |t| [t.due_date, t.priority] }  
```

```
Id 	Title 	Due Date 	Priority
4 	Prepare slides for meeting 	5/4/2015 	1
3 	Buy groceries 	5/4/2015 	2
6 	Schedule dentist appt 	5/4/2015 	3
1 	Stop by the Bank 	5/5/2015 	2
5 	Water the plants 	5/6/2015 	3
2 	Finish TPS Reports 	5/8/2015 	1
```

Figure out how to get this as a collection of fake objects... `OpenStruct`?

### Resources

- [https://allenan.com/how-to-use-sort_by-to-sort-by-multiple-parameters-in-ruby/](https://allenan.com/how-to-use-sort_by-to-sort-by-multiple-parameters-in-ruby/)
