# Quick and Dirty Battleship
## A simple battleship API

### Running the application
- clone the repository
- `cd` into it
- `bundle`
- `rails server`

### Usage
The application offers several endpoints for managing a battleship game.

#### Create new game

`POST`  `/games.json?player1=foo`

#### Join an existing game

`PUT`  `/games/:id/join.json?player2=bar`

#### Place ships on the board
Places 5 ships per player on the board in random locations.

`PUT` `/games/:id/place-ships`

#### Nuke
Attacks the specified coordinate on behalf of the supplied player

`PUT` `/games/:id/nuke.json?player=foo&coordinate=a1`


