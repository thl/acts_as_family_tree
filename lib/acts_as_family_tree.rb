# ActsAsFamilyTree
require 'acts_as_family_tree/active_record/acts/family_tree/ancestors_and_descendants'
require 'acts_as_family_tree/active_record/acts/family_tree/tree'
require 'acts_as_family_tree/active_record/acts/family_tree/node'

ActiveSupport.on_load(:active_record) do
  require 'acts_as_family_tree/active_record/acts/family_tree/extension'
  include ActiveRecord::Acts::FamilyTree::Extension
end

module ActsAsFamilyTree
end