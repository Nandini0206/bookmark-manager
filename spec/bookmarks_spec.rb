require 'bookmarks'


describe Bookmark do

  describe '#list' do
    it 'returns list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

      bookmarks = Bookmark.list
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '#create' do
    it 'creates new bookmark' do
      Bookmark.create(url: 'http://www.bbc.co.uk')
      expect(Bookmark.list).to include 'http://www.bbc.co.uk'
    end
  end
end
