class CandidateTasksController < ApplicationController
  before_action :set_candidate_task, only: %i[ show edit update destroy ]

  # GET /candidate_tasks or /candidate_tasks.json
  def index
    @candidate_tasks = CandidateTask.all
  end

  # GET /candidate_tasks/1 or /candidate_tasks/1.json
  def show
  end

  # GET /candidate_tasks/new
  def new
    @candidate_task = CandidateTask.new
  end

  # GET /candidate_tasks/1/edit
  def edit
  end

  # POST /candidate_tasks or /candidate_tasks.json
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

  # PATCH/PUT /candidate_tasks/1 or /candidate_tasks/1.json
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

  # DELETE /candidate_tasks/1 or /candidate_tasks/1.json
  def destroy
    @candidate_task.destroy
    respond_to do |format|
      format.html { redirect_to candidate_tasks_url, notice: "Candidate task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate_task
      @candidate_task = CandidateTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candidate_task_params
      params.require(:candidate_task).permit(:task_id, :candidate_id)
    end
end
