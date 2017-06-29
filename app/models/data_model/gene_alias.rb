module DataModel
  class GeneAlias < ActiveRecord::Base
    include Genome::Extensions::UUIDPrimaryKey

    belongs_to :gene
    has_and_belongs_to_many :sources

    def self.for_search
      eager_load(:gene)
    end
  end
end
