class AttackController < ApplicationController
def team_one_ultimate
  #Ульта команды 1: если в команде 1 есть хотя бы два мага и два рыцаря, они могут использовать ульту и призвать 5 рыцарей.
  Character.team_one_ultimate
  redirect_to :controller => 'home', :action => 'index'
end

def team_two_ultimate
  #Ульта команды 2: если в команде два есть 2 джинна и 1 медуза, они могут убрать с поля 3 случайных персонажей противников.
  Character.team_two_ultimate
  redirect_to :controller => 'home', :action => 'index'
end

def default_team_one_attack
  #Убьет с 50% шансом рандомного юнита команды 2
  Character.default_team_one_attack
  redirect_to :controller => 'home', :action => 'index'
end

def default_team_two_attack
  #Убьет с 50% шансом рандомного юнита команды 1
  Character.default_team_two_attack
  redirect_to :controller => 'home', :action => 'index'
end
end