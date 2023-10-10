# == Schema Information
#
# Table name: game_results
#
#  id          :bigint           not null, primary key
#  api_choice  :string
#  response    :jsonb
#  user_choice :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_game_results_on_api_choice   (api_choice) USING hash
#  index_game_results_on_user_choice  (user_choice) USING hash
#
class GameResult < ApplicationRecord

  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Relationships ========================================================

  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================

end
