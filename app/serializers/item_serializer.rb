class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :created_at, :name

  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
