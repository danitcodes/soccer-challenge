require('rspec')
require('game_results')

describe('#game_results') do
  static_filename = File.absolute_path("sample-input.txt")
  games = []
  File.readlines(static_filename).each { |file_line| games << file_line }

  teams = games.map { |game| game.split(", ") }.flatten

  # reads a file
  # saves file data as an object
  # instantiates empty array `games`
  # gets a list of teams
  # instantiates empty array games

  # gets the number of teams_in_league based on the unique count of team names
  # gets number of txt file lines per matchday based on # of teams in league
  # instantiates empty `all_matchday_results` array
  # use games in a single matchday's to aggregate all matchday results
  # tests sorting of the top 3 matchday teams
  # format the output printed to the terminal

  it("gets the number of teams_in_league based on the unique count of team names") do
    expect(teams_in_league_count(teams)).to(eq(6))
  end

  it("gets number of txt file lines per matchday based on # of teams in league") do
    expect(lines_per_matchday(teams)).to(eq(3))
  end

  it("gets the names of the teams in a league") do
    expect(teams_in_league(teams)).to(eq(["San Jose Earthquakes",
                                              "Santa Cruz Slugs",
                                              "Capitola Seahorses",
                                              "Aptos FC",
                                              "Felton Lumberjacks",
                                              "Monterey United",
                                              "Felton Lumberjacks",
                                              "Aptos FC",
                                              "Santa Cruz Slugs",
                                              "Capitola Seahorses",
                                              "Monterey United",
                                              "San Jose Earthquakes",
                                              "Santa Cruz Slugs",
                                              "Aptos FC",
                                              "San Jose Earthquakes",
                                              "Felton Lumberjacks",
                                              "Monterey United",
                                              "Capitola Seahorses",
                                              "Aptos FC",
                                              "Monterey United",
                                              "Capitola Seahorses",
                                              "San Jose Earthquakes",
                                              "Santa Cruz Slugs",
                                              "Felton Lumberjacks"]))
  end
end
