class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title  = title
    @author = author
  end

  def self.all
    [
      Book.new("1984", "George Orwell"),
      Book.new("Brave New World", "Aldous Huxley"),
      Book.new("Fahrenheit 451", "Ray Bradbury")
    ]
  end
end
