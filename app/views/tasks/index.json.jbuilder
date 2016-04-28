json.draw params[:draw]
json.recordsTotal @recordsTotal
json.recordsFiltered @recordsFiltered
json.data @tasks.each do |task|
  json.extract! task, :id, :taskName, :created_at
  json.lifeCycleStepName task.life_cycle_step.lifeCycleStepName
  json.url task_url(task, format: :json)
end