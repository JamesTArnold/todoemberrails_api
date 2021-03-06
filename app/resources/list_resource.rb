class ListResource < JSONAPI::Resource
  attributes :name
  has_many :items

  filters :query

  def self.apply_filter(records, filter, value, options)
    case filter
      when :query
        records.where('name LIKE ?', "%#{value.first}%")
      else
        super
    end
  end
end
