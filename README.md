# Ruby on Rails Exercise

## Overview

In this exercise, your task is to implement a simple REST API to manage a collection of news articles. Each article has the following attributes:

- `id`: The unique ID of the article. (Integer)
- `title`: The title of the article. (String)
- `content`: The content of the article. (String)
- `author`: Name of the author of the article. (String)
- `category`: The category of the article. (String)
- `published_at`: The publishing date of the article. (Date)

## Requirements

The REST API must expose the following endpoints:

`POST /articles`

- Receives a JSON payload representing an article.
- Validates the following conditions:
    - title is provided
    - length of title is less than or equal to 40 characters
    - content is provided
    - author is provided
    - category is provided
    - published_at is provided
- If any of these conditions are not met, the server should insert the article into the database.
- In the case of a valid request, the server should return response code 201 and the newly-created article's information in JSON format.

`GET /articles`

- Returns a JSON collection of all articles, ordered by publishing date in descending order.

`GET /articles/<id>`

- Returns an article with the given id in JSON format, if it exists.

`DELETE`, `PUT`, and `PATCH` requests to `/articles/<id>`

- Returns response code 405 because this public API does not allow articles to be deleted or modified.
