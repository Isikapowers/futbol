class Team
  attr_reader :team_id,
                :franchiseId,
                :team_name,
                :abbreviation,
                :Stadium,
                :link

  def initialize(data)
        @team_id = data[:team_id]
        @franchise_id = data[:franchiseId]
        @team_name = data[:teamName]
        @abbreviation = data[:abbreviation]
        @stadium = data[:Stadium]
        @link = data[:link]
    end

end
