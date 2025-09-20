ActiveSupport.on_load(:active_record) do
  require_dependency 'acts_as_family_tree/active_record/acts/family_tree/extension'
  include ActiveRecord::Acts::FamilyTree::Extension
end