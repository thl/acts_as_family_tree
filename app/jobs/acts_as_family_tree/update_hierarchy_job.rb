module ActsAsFamilyTree
  class UpdateHierarchyJob < ApplicationJob
    queue_as :default
        
    def perform(record)
      record.update_hierarchy
    end
  end
end