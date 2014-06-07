class MoodFormsController < ApplicationController
  before_action :set_mood_form, only: [:show, :edit, :update, :destroy]

  # GET /mood_forms
  # GET /mood_forms.json
  def index
    @mood_forms = MoodForm.all
  end

  # GET /mood_forms/1
  # GET /mood_forms/1.json
  def show
  end

  # GET /mood_forms/new
  def new
    @mood_form = MoodForm.new
  end

  # GET /mood_forms/1/edit
  def edit
  end

  # POST /mood_forms
  # POST /mood_forms.json
  def create
    @mood_form = MoodForm.new(mood_form_params)

    respond_to do |format|
      if @mood_form.save
        format.html { redirect_to @mood_form, notice: 'Mood form was successfully created.' }
        format.json { render :show, status: :created, location: @mood_form }
      else
        format.html { render :new }
        format.json { render json: @mood_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mood_forms/1
  # PATCH/PUT /mood_forms/1.json
  def update
    respond_to do |format|
      if @mood_form.update(mood_form_params)
        format.html { redirect_to @mood_form, notice: 'Mood form was successfully updated.' }
        format.json { render :show, status: :ok, location: @mood_form }
      else
        format.html { render :edit }
        format.json { render json: @mood_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mood_forms/1
  # DELETE /mood_forms/1.json
  def destroy
    @mood_form.destroy
    respond_to do |format|
      format.html { redirect_to mood_forms_url, notice: 'Mood form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood_form
      @mood_form = MoodForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mood_form_params
      params.require(:mood_form).permit(:mood, :comment, :panic)
    end
end
