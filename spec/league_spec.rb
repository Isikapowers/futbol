require "simplecov"
require "CSV"
require "./lib/stat_tracker"
require "./lib/league"


SimpleCov.start
RSpec.describe League do
  before(:each) do
    game_path = './data/games_test.csv'
    team_path = './data/teams_test.csv'
    game_teams_path = './data/game_teams_test.csv'

    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    @stat_tracker = StatTracker.from_csv(locations)
    @league = League.new(@stat_tracker.games, @stat_tracker.teams, @stat_tracker.game_teams)

  end

  it 'exists and can read data' do
    league = League.new([], [], [])

    expect(league).to be_a(League)
    expect(league.games).to eq([])
    expect(league.teams).to eq([])
    expect(league.game_teams).to eq([])
  end

  it 'can count numbers of teams' do
    expect(@league.count_of_teams).to eq(32)
  end

  xit 'can get best offense' do
    expect(@league.best_offense).to eq(2)
  end

  xit 'can get an array of games played' do
    expect(@league.games_by_team(3).length).to eq(5)
  end

  it 'can make an average from games' do
    expect(@league.games_average(3)).to eq(1.6)
  end


end