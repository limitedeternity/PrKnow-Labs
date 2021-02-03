domains
  filmTitle = symbol
  filmProducer = symbol
  filmReleaseYear = integer
  % ---------
  artistFullName = symbol
  artistPosition = symbol
  artistAge = integer
  artistWorkingAt = symbol
  % ---------
  starringHero = symbol

predicates
  nondeterm film(filmTitle, filmProducer, filmReleaseYear).
  nondeterm artist(artistFullName, artistPosition, artistAge, artistWorkingAt).
  nondeterm starring(filmTitle, artistFullName, starringHero).
  
  nondeterm artistToFilm(artistFullName, filmTitle).
  nondeterm filmToArtistAge(filmTitle, artistFullName, artistAge).
  nondeterm heroToArtist(filmTitle, starringHero, artistFullName, artistPosition).
  nondeterm producersActors(filmProducer, artistFullName, filmTitle).
 
clauses
  film("The Shawshank Redemption", "Frank Darabont", 1994).
  film("The Green Mile", "Frank Darabont", 1999).

  artist("Tim Robbins", "Actor", 62, "Filming Industry").
  artist("Morgan Freeman", "Actor", 83, "Filming Industry").
  artist("William Sadler", "Actor", 70, "Filming Industry").
  artist("David Morse", "Actor", 67, "Filming Industry").
  artist("Tom Hanks", "Actor", 64, "Filming Industry").
  
  starring("The Shawshank Redemption", "Tim Robbins", "Andy Dufresne").
  starring("The Shawshank Redemption", "Morgan Freeman", "Ellis Boyd").
  starring("The Shawshank Redemption", "William Sadler", "Heywood").
  starring("The Green Mile", "William Sadler", "Klaus Detterick").
  starring("The Green Mile", "David Morse", "Brutus Howell").
  starring("The Green Mile", "Tom Hanks", "Paul Edgecomb").
  
  artistToFilm(Name, Film):- starring(Film, Name, _), film(Film, _, _).
  filmToArtistAge(Film, Name, Age):- starring(Film, Name, _), film(Film, _, _), artist(Name, _, Age, _).
  heroToArtist(Film, Hero, Name, Position):- film(Film, _, _), starring(Film, Name, Hero), artist(Name, Position, _, _).
  producersActors(Producer, Name, Film):- film(Film, Producer, _), starring(Film, Name, _).

goal
  % Tim Robbins was starring in The Shawshank Redemption
  % Name="Tim Robbins", artistToFilm(Name, Film), nl, write(Name, " was starring in ", Film), nl.
  
  % Tim Robbins 62, Morgan Freeman 83, William Sadler 70
  % Film="The Shawshank Redemption", filmToArtistAge(Film, Name, Age), nl, write("Age of ", Name, ", who was starring in ", Film, " is ", Age), nl. 
  
  % The Actor who played Andy Dufresne in The Shawshank Redemption was Tim Robbins
  % Film="The Shawshank Redemption", Hero="Andy Dufresne", heroToArtist(Film, Hero, Name, Position), nl, write("The ", Position, " who played ", Hero, " in ", Film, " was ", Name), nl.
  
  % William Sadler
  % Producer="Frank Darabont", producersActors(Producer, Name1, Film1), producersActors(Producer, Name2, Film2), Name1 = Name2, Film1 <> Film2,
  nl.