# README

## Project: [Kittens API](https://www.theodinproject.com/lessons/ruby-on-rails-kittens-api)

### Goals
- Understand how APIs are configured using RESTful routings using `respond_to`
```
respond_to do |format|
    format.html
    format.json { render json: @kittens }
end
```
