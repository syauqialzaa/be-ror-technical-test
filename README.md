<h1 align="center"><b>Ruby On Rails Technical Test</b></h1>

BackEnd Developer - Ruby On Rails Technical Test at Altech Omega Andalan.\
Company Website: https://altechomega.com

## Tech Stack

| Technologies       | Version           |
| ------------------ | ----------------- |
| Ruby (RVM)         | v3.1.2 (v1.29.12) |
| Ruby On Rails      | v7.0.4            |
| PostgreSQL         | v14.10            |

## Used Gems

| Dependencies   | Gems          |
| -------------- | ------------- |
| Auth & Auto    | devise        |
| Background Job | sidekiq       |
| ERD            | rails-erd     |
| Pagination     | will_paginate |
| API Swagger    | grape-swagger |
| Debugging      | byebug        |

## Run

1. Create rails local credentials. If using VS Code as code editor write this command:
   ```bash
   EDITOR="code --wait" rails credentials:edit
   ```
   Add these line and adjust it with your local database configuration:
   ```yaml
   postgresql:
     database: ur_dbname
     username: ur_uname
     password: ur_psswd
     host: localhost
     port: 5432
   ```
   Then save it.
   
2. run `bundle/bundle install`.
3. run `rails db:create db:migrate`.
4. run `rails server`.