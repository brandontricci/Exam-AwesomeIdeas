class IdeasController < ApplicationController
  before_filter :authenticate_user!
 
  def index
    @ideas = Idea.all

    respond_to do |format|
    format.html 
    format.json { render json: @ideas }
    end
  end

  def show
   @idea = Idea.find(params[:id])

   respond_to do |format|
   format.html 
   format.json { render json: @idea }
    end
  end

  def new
    @idea = Idea.new

    respond_to do |format|
      format.html 
      format.json { render json: @idea }
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def create
    @idea = Idea.new(params[:id])

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render json: @idea, status: :created, location: @idea }
      else
        format.html { render action: "new" }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @idea = Idea.find(params[:id])

    respond_to do |format|
      if @idea.update_attributes(params[:id])
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

    respond_to do |format|
      format.html { redirect_to ideas_url }
      format.json { head :no_content }
    end
  end
end
