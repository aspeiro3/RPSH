# frozen_string_literal: true

class GameContract < ApplicationContract

  params do
    required(:user_choice).filled(:string)
  end

  rule(:user_choice) do
    key(:base).failure(I18n.t('errors.invalid_request')) if DEFAULT_VALUES.exclude?(value.downcase)
  end

end
