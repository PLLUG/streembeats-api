require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "should create Genre" do
    genre = Genre.new do |g|
      g.title = "Test genre"
      g.description = "Test genre desription"
      g.wikipedia_link = "http://wiki.org"
    end

    assert genre.save, true
  end

  test "should be unique title" do
    genre = Genre.new do |g|
      g.title = "title"
      g.wikipedia_link = 'http://wikipedia_link.org'
    end
    genre.save

    duplicated_genre = Genre.new do |g|
      g.title = "title"
      g.wikipedia_link = 'http://wiki.org'
    end
    duplicated_genre.save

    messages = duplicated_genre.errors.messages
    assert messages[:title].any?
  end

  test "should be uniquee wikipedia_link" do
    genre = Genre.new do |g|
      g.title = "Test"
      g.wikipedia_link = "http://wiki.org"
    end
    genre.save

    duplicated_genre = Genre.new do |g|
      g.title = "Title2"
      g.wikipedia_link = "http://wiki.org"
    end
    duplicated_genre.save
    messages = duplicated_genre.errors.messages

    assert messages[:wikipedia_link].any?
  end

  test "should invalid wikipedia_link" do
    genre = Genre.new do |g|
      g.title = "Test3"
      g.wikipedia_link = "test_link"
    end
    genre.save
    messages = genre.errors.messages
    p messages
    assert messages[:wikipedia_link].any?
  end
end
