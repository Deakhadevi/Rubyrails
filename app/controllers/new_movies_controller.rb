class NewMoviesController < ApplicationController
  before_action :set_new_movie, only: %i[ show edit update destroy ]

  # GET /new_movies or /new_movies.json
  def index
    @new_movies = NewMovie.all
  end

  # GET /new_movies/1 or /new_movies/1.json
  def show
  end

  # GET /new_movies/new
  def new
    @new_movie = NewMovie.new
  end

  # GET /new_movies/1/edit
  def edit
  end

  # POST /new_movies or /new_movies.json
  def create
    @new_movie = NewMovie.new(new_movie_params)

    respond_to do |format|
      if @new_movie.save
        format.html { redirect_to new_movie_url(@new_movie), notice: "New movie was successfully created." }
        format.json { render :show, status: :created, location: @new_movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_movies/1 or /new_movies/1.json
  def update
    respond_to do |format|
      if @new_movie.update(new_movie_params)
        format.html { redirect_to new_movie_url(@new_movie), notice: "New movie was successfully updated." }
        format.json { render :show, status: :ok, location: @new_movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_movies/1 or /new_movies/1.json
  def destroy
    @new_movie.destroy

    respond_to do |format|
      format.html { redirect_to new_movies_url, notice: "New movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_movie
      @new_movie = NewMovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_movie_params
      params.require(:new_movie).permit(:title, :description, :director, :rating)
    end
end
