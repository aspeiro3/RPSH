# frozen_string_literal: true

JSON.parse(File.read('lib/data/selection_combinations.json')).each do |data|
  GameResult.find_or_create_by(
    user_choice: data['user_choice'],
    api_choice: data['api_choice'],
    response: {
      user_choice: data['user_choice'],
      api_choice: data['api_choice'],
      result: data['result']
    }
  )
end

puts "\u{2705} | Game Results created"
puts '🔥 | -'
