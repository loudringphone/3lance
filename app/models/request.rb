class Request < ApplicationRecord
    validates :title, :presence => true
    validates_format_of :title, with: /[a-zA-Z]+/, message: "must contain at least one letter"

    belongs_to :user, :optional => true
    has_many :comments, dependent: :delete_all
    has_many :offers, dependent: :delete_all


end
