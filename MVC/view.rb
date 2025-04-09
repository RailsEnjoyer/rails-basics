module View
  def self.render(books)
    puts "📚 Books list:"
    books.each do |book|
      puts "- #{book.title} (#{book.author})"
    end
  end
end
