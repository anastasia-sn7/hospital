class BaseQuery
  attr_reader :relation

  def initialize(relation)
    @relation = relation
  end

  def search(name)
    @relation
  end

  def sort(param)
    @relation
  end
end
