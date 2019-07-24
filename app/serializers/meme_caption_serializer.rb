class MemeCaptionSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :meme;
  belongs_to :caption;
end
