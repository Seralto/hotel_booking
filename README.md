# Hotel Booking System

### Versions:
* Ruby 2.3.1
* Rails 4.2.6

### Database
* **Production:** PostgreSQL
* **Development:** SQLite

### Main Gems
* Grape
* Devise
* Geocomplete
* Google Places
* Bootstrap
* Date Picker

### Description
Hotel Booking System where the user can enter a location and find hotels near him.  
The user can book any hotel choosing a checking date (one booking per day).

### API
The APP provides a public API which gives the endpoints below:
```
/api/v1/bookings
/api/v1/bookings/{user-id}
```

### ENV vars
In order to install the APP localy, create the following ENV var based on your Google APIs (https://console.developers.google.com/apis/library)
```
PLACES_KEY
GOOGLE_API_KEY
```

### Heroku
The APP is hosted in Heroku:
http://hotel-booking-system.herokuapp.com

