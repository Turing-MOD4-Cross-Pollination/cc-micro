# CC-Micro

## Contents
- [Introduction](#intro)
- [How to Use](#use)
- [Tech Stack List](#stack)
- [Core Contributors](#contributors)

### Introduction <a name="intro"></a>

Welcome to CommunityConnect's Rails micro-service to obtain the latitude and longitude from Google's Geocode API. This allows us to place resources and recovery support groups on to Google Maps within proximity to the user's current location. You can find the team's GitHub organization page with all the project's repositories [here](https://github.com/Turing-MOD4-Cross-Pollination).

### How to Use

The base URL for this application is [https://cc-be-micro.herokuapp.com/](https://cc-be-micro.herokuapp.com/) although because this is an API only application, that production link won't display anything. To use this app, you'll need to make an HTTP request via your own application or a program such as [Postman](https://www.getpostman.com/downloads/). The endpoint is namespaced or versioned under `/api/v1/coordinates` and you'll need to include an address parameter with the location you'd like to obtain longitude and latitude coordinates for. For example:

```
https://cc-be-micro.herokuapp.com/api/v1/coordinates?address=denver,co
```

The response will come back in the following format:

```
{
    "data": {
        "id": "11",
        "type": "coordinates",
        "attributes": {
            "longitude": -104.990251,
            "latitude": 39.7392358
        }
    }
}
```

### Tech Stack <a name="stack"></a>

- [Ruby on Rails](https://rubyonrails.org/)
- [Heroku](heroku.com)

### Contributors <a name="contributors"></a>

Corina Allen
- GitHub: [StarPerfect](https://github.com/StarPerfect)
- LinkedIn: [Corina Allen](https://www.linkedin.com/in/corina-allen/)

Josh Sherwood
- GitHub: [joshsherwood1](https://github.com/joshsherwood1)
- LinkedIn: [Josh Sherwood](https://www.linkedin.com/in/sherwoodjosh/)