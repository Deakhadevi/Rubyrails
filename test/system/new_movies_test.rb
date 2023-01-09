require "application_system_test_case"

class NewMoviesTest < ApplicationSystemTestCase
  setup do
    @new_movie = new_movies(:one)
  end

  test "visiting the index" do
    visit new_movies_url
    assert_selector "h1", text: "New movies"
  end

  test "should create new movie" do
    visit new_movies_url
    click_on "New new movie"

    fill_in "Description", with: @new_movie.description
    fill_in "Director", with: @new_movie.director
    fill_in "Rating", with: @new_movie.rating
    fill_in "Title", with: @new_movie.title
    click_on "Create New movie"

    assert_text "New movie was successfully created"
    click_on "Back"
  end

  test "should update New movie" do
    visit new_movie_url(@new_movie)
    click_on "Edit this new movie", match: :first

    fill_in "Description", with: @new_movie.description
    fill_in "Director", with: @new_movie.director
    fill_in "Rating", with: @new_movie.rating
    fill_in "Title", with: @new_movie.title
    click_on "Update New movie"

    assert_text "New movie was successfully updated"
    click_on "Back"
  end

  test "should destroy New movie" do
    visit new_movie_url(@new_movie)
    click_on "Destroy this new movie", match: :first

    assert_text "New movie was successfully destroyed"
  end
end
