require "test_helper"

class NewMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_movie = new_movies(:one)
  end

  test "should get index" do
    get new_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_new_movie_url
    assert_response :success
  end

  test "should create new_movie" do
    assert_difference("NewMovie.count") do
      post new_movies_url, params: { new_movie: { description: @new_movie.description, director: @new_movie.director, rating: @new_movie.rating, title: @new_movie.title } }
    end

    assert_redirected_to new_movie_url(NewMovie.last)
  end

  test "should show new_movie" do
    get new_movie_url(@new_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_movie_url(@new_movie)
    assert_response :success
  end

  test "should update new_movie" do
    patch new_movie_url(@new_movie), params: { new_movie: { description: @new_movie.description, director: @new_movie.director, rating: @new_movie.rating, title: @new_movie.title } }
    assert_redirected_to new_movie_url(@new_movie)
  end

  test "should destroy new_movie" do
    assert_difference("NewMovie.count", -1) do
      delete new_movie_url(@new_movie)
    end

    assert_redirected_to new_movies_url
  end
end
