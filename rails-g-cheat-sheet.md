# Rails g cheat Sheet

## Devise

```
rails g devise:views
```

## Models

```
rails g model User name:text
```

```
rails generate scaffold brag_entry title:string description:text
```

## Migrations

```ruby
class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
    
    change_table :brag_entries do |t| 
      t.references :author
    end
  end
end

```
```
rails db:migrate
rails db:rollback
rails db:rollback STEP=2 # rollback 2 migrations
rails db:rollback 
```