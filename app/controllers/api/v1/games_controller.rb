module Api

  module V1

    class GamesController < ApplicationController

      def show
        command = ::Game.call(params.to_unsafe_hash)

        if command.success?
          json_response(command.result)
        else
          json_response(serialized_errors(command.errors), :unprocessable_entity)
        end
      end

    end

  end

end
