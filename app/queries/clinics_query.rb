require_relative 'base_query'

class ClinicsQuery < BaseQuery
  def initialize(relation)
    super(relation)
  end

  def search(name)
    relation = Clinic.all
    relation = relation.where("name ILIKE ?", "%#{name}%") if name.present?
    relation
  end

  def sort(param)
    relation = @relation
    relation = relation.order(name: :asc) if param == 'name'
    relation
  end
end