# frozen_string_literal: true

class Game

  include BasicService

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def call
    with_contract(::GameContract.new, params) do |attributes|
      prepare_response(attributes[:user_choice])
    rescue StandardError
      game_result(attributes[:user_choice], DEFAULT_VALUES.sample).response
    end
  end

  private

  def prepare_response(user_choice)
    if user_choice.eql?('hammer')
      game_result(user_choice, DEFAULT_VALUES.sample).response
    else
      make_api_throw(user_choice).response
    end
  end

  def game_result(user_choice, api_choice)
    GameResult.find_by(user_choice: user_choice, api_choice: api_choice)
  end

  def make_api_throw(user_choice)
    if api_response.status.eql?(200)
      game_result(user_choice, JSON.parse(api_response.body)['body'])
    else
      game_result(user_choice, DEFAULT_VALUES.sample)
    end
  end

  def api_response
    @api_response ||= Faraday.get('https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw')
  end

end
