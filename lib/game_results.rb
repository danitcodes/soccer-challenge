#!/usr/bin/env ruby

static_filename = File.absolute_path("sample-input.txt")
games = []
# one game per file line
File.readlines(static_filename).each { |file_line| games << file_line }

teams = games.map { |game| game.split(", ") }.flatten

def teams_in_league(teams)
  team_names = []
  teams.each do |team|
    team_arr = team.split(" ")
    team_name = team_arr.shift(team_arr.count - 1).join(" ")
    team_names << team_name
  end
  team_names
end

def teams_in_league_count(teams)
  teams_in_league(teams).uniq.count
end

# establish matchday boundaries
def lines_per_matchday(teams)
  teams_in_league_count(teams) / 2
end

# games played up by matchday
matchdays = []

games.each_slice(lines_per_matchday(teams)) { |game| matchdays << game}

# all games to date
all_matchday_results = {}

matchdays.each.with_index do |matchday, index|
  # games in a matchday
  single_matchday_results = {}

  # individual game, e.g. "San Jose Earthquakes 3, Santa Cruz Slugs 3\n"
  matchday.each do |game|
    game.split(", ").each do |team|
      team_arr = team.split(" ")
      # "San Jose Earthquakes"
      team_name = team_arr.shift(team_arr.count - 1).join(" ")

      points_scored = team_arr.last.to_i
      if points_scored != nil
        single_matchday_results[team_name] = points_scored
      end
    end
  end
  # sort by most pts scored to least, then sort team name by alphabetical order and take the top 3 teams from this sorted list
  sorted_results = single_matchday_results.sort_by {|k, v| [-v, k]}[0..2]
  all_matchday_results[index] = sorted_results.to_h
end

def top_team_output(all_matchday_results)
  all_matchday_results.each do |k, v|
    puts "Matchday #{k + 1}"
    v.each do |team, pt|
      puts <<~HEREDOC
        #{team}, #{pt} pts
      HEREDOC
    end
    puts ""
  end
end

top_team_output(all_matchday_results)
