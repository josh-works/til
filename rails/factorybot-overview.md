# Factorybot Overview

## Create multiples of a single object:

use `create_list` instead of `create`, 2nd argument is the number of objects to make. 

## Usage 

```ruby
meetings = create_list(:meeting, 3, organization_user: organization_user, is_enabled: true)
```

## Setup

```ruby
FactoryBot.define do
  factory :brag_entry do
    title { "#{Faker::Hacker.adjective}" "#{Faker::Hacker.noun}" }
    description { Faker::Hacker.say_something_smart }
    association :author
  end
end
```

Source: [https://stackoverflow.com/questions/18445828/factorybot-create-the-same-object-multiple-times](https://stackoverflow.com/questions/18445828/factorybot-create-the-same-object-multiple-times)


