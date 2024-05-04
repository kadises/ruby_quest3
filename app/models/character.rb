class Character < ApplicationRecord
  validates :unit, :team, presence: true
  validates :team, inclusion: [1,2]
  validates :unit, inclusion: ['jinn','medusa'], if: :team_two?
  validates :unit, inclusion: ['mage','knight'], if: :team_one?

  def team_one?
    team == 1
  end

  def team_two?
    team == 2
  end

  def self.team_one_ultimate
    if Character.where(team: 1, unit: 'mage').length >=2 and Character.where(team: 1, unit: 'knight').length >=2
      5.times do
        Character.create(unit:'knight',team: 1)
      end
    end
  end

  def self.team_two_ultimate
    if Character.where(team: 2, unit: 'medusa').length >=1 and Character.where(team: 2, unit: 'jinn').length >=2
      team_1 = Character.where(team:1)
      if team_1.length > 3
        team_1.sample(3).each do |ch|
          ch.delete
        end
      end
    end
  end

  def self.default_team_one_attack
    if rand(0..1).zero?
      team_2 = Character.where(team:2)
      team_2.sample(1).each do |ch|
        ch.delete
      end
    end
  end

  def self.default_team_two_attack
    if rand(0..1).zero?
      team_2 = Character.where(team:1)
      team_2.sample(1).each do |ch|
        ch.delete
      end
    end
  end
end  