# `specify` is the same as `it/do/expect`

```ruby
specify { expect(described_class[key]).to eq('val') }

# same as 

it "should equal 'val'" do
  expect(described_class[key]).to eq('val')
end
```

