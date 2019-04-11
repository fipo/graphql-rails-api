=begin
Define a class with a method that will iterate through the list of queryTypes
and call fields on each one and merge the results into one hash.
That way, all TodoList related queries can live in one querytype.
https://m.alphasights.com/graphql-ruby-clean-up-your-query-type-d7ab05a47084
=end

module Util
  class FieldCombiner
    def self.combine(query_types)
      Array(query_types).inject({}) do |acc, query_type|
        acc.merge!(query_type.fields)
      end
    end
  end
end
