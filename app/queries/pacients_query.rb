# frozen_string_literal: true

class PacientsQuery
  def self.call(params)
    pacients = Pacient.all
    pacients.order(created_at: :desc)
  end
end