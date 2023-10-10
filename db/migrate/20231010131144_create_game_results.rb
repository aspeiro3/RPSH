class CreateGameResults < ActiveRecord::Migration[7.0]

  def change
    create_table :game_results do |t|
      t.string :user_choice
      t.string :api_choice
      t.jsonb :response, default: {}

      t.timestamps
    end

    add_index :game_results, :user_choice, using: :hash
    add_index :game_results, :api_choice, using: :hash
  end

end
