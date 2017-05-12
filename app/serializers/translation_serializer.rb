class TranslationSerializer < ActiveModel::Serializer
  attributes :id, :original, :modified_sp, :modified_fr, :modified_ro, :modified_it, :modified_por
  belongs_to :category
end
