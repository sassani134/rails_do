rails g model Job name
rails g resource Player name job:references
rails g scaffold Team name town player:references
rails db:migrate

tournament = Match + Team + victory
rails g model Match name team1:references team2:references score1:integer score2:integer
rails g model Tournament name
rails g model TournamentMatch tournament:references match:references
rails g model TournamentTeam tournament:references team:references
