Rails.application.routes.draw do
   root "home#index"

   get 'add-knight', to: 'character#add_knight'
   get 'add-mage', to: 'character#add_mage'
   get 'add-medusa', to: 'character#add_medusa'
   get 'add-jinn', to: 'character#add_jinn'

   get 'team-one-ultimate', to: 'attack#team_one_ultimate'
   get 'team-two-ultimate', to: 'attack#team_two_ultimate'

   get 'default-team-one-attack',to: 'attack#default_team_one_attack'
   get 'default-team-two-attack',to: 'attack#default_team_two_attack'
   
end
