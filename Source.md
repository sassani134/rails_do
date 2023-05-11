rails g model Job name
rails g resource Player name job:references
rails g scaffold Team name town player:references
rails db:migrate

tournament = Match + Team + victory
rails g model Match name team1:references team2:references score1:integer score2:integer
rails g model Tournament name
rails g model round name tournament:references match:references



rails g model TournamentMatch tournament:references match:references
rails g model TournamentTeam tournament:references team:references

11.times do |i|
    Tournament.create(name: "Tournament #{i}")


      t.references :requestee, null: false,  foreign_key: { to_table: :users }
      t.references :attendee, null: false,  foreign_key: { to_table: :users }


player has_one team
player belongs_to job
job has_many players
team has_many players
team has_many matches
player has_many matches through team
match belongs_to team
match belongs_to round
round has_many matches
round belongs_to tournament
tournament has_many rounds

player model: name, job_id
job model: name
team model: name, town player_ids:references
match model: name, team1_id, team2_id, score1, score2
round model: name, tournament_id, match_ids:references
tournament model: name, round_ids:references

rails g model Player name job:references
rails g model Job name
rails g model Team name town player_ids:references
rails g model Match name team1:references team2:references score1:integer score2:integer
rails g model Round name tournament:references match_ids:references
rails g model Tournament name round_ids:references

rails g migration AddPlayerToTeam player:references
rails g migration RemovePlayerFromTeam player:references
rails g migration join_table_players_teams player:references team:references
https://i.stack.imgur.com/gH80g.gif
https://app.genmymodel.com/api/repository/krzysiekk09/TournamentSystemClass