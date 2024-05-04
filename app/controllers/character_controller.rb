class CharacterController < ActionController::Base
  def add_knight
    Character.create(unit: 'knight',team: 1)
    redirect_to :controller => 'home', :action => 'index'
  end

  def add_mage
    Character.create(unit: 'mage',team: 1)
    redirect_to :controller => 'home', :action => 'index'
  end

  def add_medusa
    Character.create(unit: 'medusa',team: 2)
    redirect_to :controller => 'home', :action => 'index'
  end

  def add_jinn
    Character.create(unit: 'jinn',team: 2)
    redirect_to :controller => 'home', :action => 'index'
  end

end