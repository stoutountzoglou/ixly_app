class CandidateTasksController < ApplicationController
  before_action :set_candidate_task, only: %i[ show edit update destroy ]

  def index
    @candidate_tasks = CandidateTask.all
  end

  def show
  end

  def new
    @candidate_task = CandidateTask.new
    @candidates = Candidate.all
    @tasks = Task.all
  end

  def edit
  end

  def create
    @candidate_task = CandidateTask.new(candidate_task_params)

    respond_to do |format|
      if @candidate_task.save
        format.html { redirect_to @candidate_task, notice: "Candidate task was successfully created." }
        format.json { render :show, status: :created, location: @candidate_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candidate_task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @candidate_task.update(candidate_task_params)
        format.html { redirect_to @candidate_task, notice: "Candidate task was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candidate_task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @candidate_task.destroy
    respond_to do |format|
      format.html { redirect_to candidate_tasks_url, notice: "Candidate task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def grouped_candidate_tasks
    # This is not performant obviously. If I was using Postgres, I'd be using some inner joins and ARRAY_AGG
    @grouped_candidate_tasks = Candidate.all.each_with_object({}) do |candidate, hash|
                                 hash_key = "#{candidate.name} #{candidate.surname} (#{candidate.email})"
                                 hash["#{hash_key}"] = candidate.tasks.map(&:description)
                               end
  end

  private
    def set_candidate_task
      @candidate_task = CandidateTask.find(params[:id])
    end

    def candidate_task_params
      params.require(:candidate_task).permit(:task_id, :candidate_id)
    end
end
