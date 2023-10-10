FactoryBot.define do
  factory :game_result do
    user_choice { 'rock' }
    api_choice  { 'scissors' }
    response    { { user_choice: 'rock', api_choice: 'scissors', result: 'user_won' } }
  end
end
