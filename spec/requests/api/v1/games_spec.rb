require 'swagger_helper'

RSpec.describe '/api/v1/game' do
  before do
    JSON.parse(File.read('lib/data/selection_combinations.json')).each do |data|
      create(
        :game_result,
        user_choice: data['user_choice'],
        api_choice: data['api_choice'],
        response: {
          user_choice: data['user_choice'],
          api_choice: data['api_choice'],
          result: data['result']
        }
      )
    end
  end

  path '/api/v1/game' do
    get 'Get Game Result' do
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user_choice, in: :query, type: :string, required: true, example: 'rock, paper, scissors, or hammer'

      response(200, 'successful') do
        let(:user_choice) { 'rock' }

        run_test! do |response|
          response_body = JSON.parse(response.body)

          expect(response_body['user_choice']).to be_present
          expect(response_body['api_choice']).to be_present
          expect(response_body['result']).to be_present
        end
      end

      response(422, 'unsuccess') do
        let(:user_choice) { 'wrong' }

        run_test! do |response|
          response_body = JSON.parse(response.body)
          expect(response_body['errors']['base']).to eq(I18n.t('errors.invalid_request'))
        end
      end
    end
  end
end
