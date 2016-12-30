== README

`rails new long-pages`

edit `Gemfile`

`gem 'kaminari'`

`rails generate kaminari:config`

edit `config/initializers/kaminari_config.rb`, set the default_per_page to smaller number like 3 or 7


`rails generate scaffold LongPage`
edit `db/migrations/name-of-migration.rb`

```ruby
class CreateLongPages < ActiveRecord::Migration                                                                           
def change
    create_table :long_pages do |t|
      t.string :title
      t.text :body
      t.string :number
    end
  end
end

rake db:migrate
```


visit - http://www.generatedata.com/ - make 100 records
- id (number auto)
- title (city)
- body (text)
- number (guid)
save as gendata.csv


```
cd db
sqlite3 development.sqlite3
.mode csv
.import ../gendata.csv long_pages
```

edit `controllers/long_pages_controller.rb`

```ruby
def index
  @long_pages = LongPage.all.page params[:page]
end
...
```

edit  `views/long_pages/index.html.erb`

```ruby
<%= paginate @long_pages %>
```

`rails s`



