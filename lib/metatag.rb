class Metatag < ActiveRecord::Base
  belongs_to :metatagble, :polymorphic => true
end