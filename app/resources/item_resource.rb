class ItemResource < JSONAPI::Resource
  attributes :checked, :text
  has_one :list

  filters :query

  def self.apply_filter(records, filter, value, options)
    case filter
      when :query
        records.where('text LIKE ?', "%#{value.first}%")
      else
        super
    end
  end
end
