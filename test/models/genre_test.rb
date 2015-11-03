require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "should create Genre" do
    genre = Genre.new do |g|
      g.title = "Test genre"
      g.description = "Test genre desription"
      g.wikipedia_link = "wiki_link"
    end

    assert genre.save, true
  end

  test "should be unique title" do
    genre = Genre.new do |g|
      g.title = "title"
    end
    genre.save

    duplicated_genre = Genre.new do |g|
      g.title = "title"
    end
    duplicated_genre.save

    messages = duplicated_genre.errors.messages
    assert_not_nil messages[:title]
  end

  test "should be uniquee wikipedia_link" do
    genre = Genre.new do |g|
      g.title = "Test"
      g.wikipedia_link = "test_link"
    end
    genre.save

    duplicated_genre = Genre.new do |g|
      g.title = "Title2"
      g.wikipedia_link = "test_link"
    end
    duplicated_genre.save
    messages = duplicated_genre.errors.messages
    assert_not_nil messages[:wikipedia_link]
  end
end
