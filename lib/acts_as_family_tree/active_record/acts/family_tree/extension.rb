module ActiveRecord
  module Acts
    module FamilyTree
      module Extension
        extend ActiveSupport::Concern

        included do
        end

        class_methods do
          def acts_as_family_tree(role, scope = nil, **options)
            class_eval do
              include ActiveRecord::Acts::FamilyTree::AncestorsAndDescendants
            end
            init_acts_as_family_tree_anc_and_desc(**options)
            if role==:tree
              class_eval do
                include ActiveRecord::Acts::FamilyTree::Tree
              end
              init_acts_as_family_tree_tree(**options)
            elsif role==:node
              class_eval do
                include ActiveRecord::Acts::FamilyTree::Node
              end
              init_acts_as_family_tree_node(scope, **options)
            else
              raise 'acts_as_family_tree requires that you specify a role of :tree or :node - "acts_as_family_tree :node"'
            end
          end
        end
      end
    end
  end
end