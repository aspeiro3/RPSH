# frozen_string_literal: true

class Game

  include BasicService

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def call
    with_contract(::GameContract.new, params) do |attributes|
      {
        user_choice: attributes[:user_choice],
        api_choice: attributes[:user_choice],
        result: 'game_draw'
      }
    end
  end

end
