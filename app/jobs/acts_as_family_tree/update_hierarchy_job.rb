module ActsAsFamilyTree
  class UpdateHierarchyJob < ApplicationJob
    queue_as :update_hierarchy
    
    around_enqueue do |job, block|
      object = job.arguments.first
      previous = Delayed::Job.where(queue: UpdateHierarchyJob.queue_name, reference: object).first
      if previous.nil?
        block.call if !block.nil?
        delayed_job = Delayed::Job.find(job.provider_job_id)
        delayed_job.update!(reference: object)
      else
        priority = job.priority || 0
        previous.update!(priority: priority) if priority < previous.priority
      end
    end
    
    def perform(record)
      record.update_hierarchy
    end
  end
end