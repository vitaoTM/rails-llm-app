# ChatBot LLM

This project is an attempt to develop a chatbot app, using Ruby on Rails and an API call from a Large Language Model such as OpenAI (ChtGTP) and Meta (Ollama)
<div align="center">
  <img src="https://static.vecteezy.com/system/resources/previews/021/059/827/non_2x/chatgpt-logo-chat-gpt-icon-on-white-background-free-vector.jpg" style="border-radius: 100px;" width="100">
  <img src="https://pbs.twimg.com/card_img/1824542128049139712/SkziG_vX?format=png&name=medium" width="100">
</div>

### Versions utilized for this project:

<div align="center">

|System|  Install Command  | Version |
|:------|:-------------------:|:---------:|
|[ruby](https://www.ruby-lang.org/en/documentation/installation/)| `ruby -v`|`3.3.0`  |
|rails|`rails -v`|`7.0.8.4`|
|[redis](https://redis.io/docs/latest/operate/oss_and_stack/install/install-redis/)|`redis-cli -v`| `6.0.16` |
|[postgreSQL](https://www.postgresql.org/download/)| `psql -V`| `14.12` |

</div>

### GEMS used other than rails daefault:
- Note: to install these gems `cd` into your app directory and run those install commands
- Obs: When creating a new rails project you can set your DataBase to the one you want, default is SQLite, to set postgreSQL or other you should add the flag `--database=DB_YOU_WANT_TO_USE` .

<div align="center">

|  Gem  | Install Command | Gem Version |
|-------|-----------------|:-------------:|
| [devise](https://rubygems.org/gems/devise/versions/4.2.0?locale=en)    | `bundle add devise`  | `4.2` |
| [foreman](https://rubygems.org/gems/foreman/versions/0.87.2?locale=en) | `bundle add foreman` | `0.87.2`|
| [redis](https://rubygems.org/gems/redis/versions/5.2.0?locale=en)      | `bundle add redis`   | `5.2` |
| [postgreSQL](https://rubygems.org/gems/pg/versions/1.5.6?locale=en)    | `bundle add pg`      | `1.5` |
| [sidekiq](https://rubygems.org/gems/sidekiq/versions/7.1.2?locale=en)  | `bundle add sidekiq` | `7.1` |
| [ruby-openAI](https://github.com/alexrudall/ruby-openai)               | `bundle add ruby-openai` | `7.1` |

</div>

## Set up

### Clone this Repo of fork it
```
git clone https://github.com/your-username/chatbot-llm.git
cd chatbot-llm
```

### Install Dependencies 
`bundle install`

### Set up Data Base

`bin/rails db:prepare` or `bin/rails db:create db:migrate`

### Set ENV file
- You will need to settup your `.env` file with you redis url and port.
- If you were to use Open AI API KEY, you shoud set in this file, do not share it. GIT does not ignore `.env` file by default, but it's good practice to add to do so.
First create your `.env` file inside your application directory by runnin `touch .env`, populate it with your API KEY from OpenAI and redis (port, URL), should look something like:

```
REDIS_PORT=xxxxx
REDIS_URL=xxxxx
OPENAI_API_KEY=sk=xxxxxxxxxxxxx
```

Note: save your API KEY in a safe place do not share it, also OPENAI does not let you copy your key a second time.
Then into your app directory and run `echo "/ .env" >> .gitignore"`, this will ensure your environment configurations does not go to your public repository.


### Rails Server

Run: `bin/rails s` to start 
To start the server with foreman i recomend reading [this gide](http://blog.daviddollar.org/2011/05/06/introducing-foreman.html)

///// construction in progress /////
