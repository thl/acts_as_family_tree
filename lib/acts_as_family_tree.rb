# ActsAsFamilyTree
require 'acts_as_family_tree/active_record/acts/family_tree/ancestors_and_descendants'
require 'acts_as_family_tree/active_record/acts/family_tree/tree'
require 'acts_as_family_tree/active_record/acts/family_tree/node'
require 'acts_as_family_tree/active_record/acts/family_tree/extension'

ActiveRecord::Base.send :include, ActiveRecord::Acts::FamilyTree::Extension

module ActsAsFamilyTree
end