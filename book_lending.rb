class Book

	attr_accessor :due_date

	@@on_shelf = []
	@@on_loan = []

	def initialize(title, author, isbn)
		@title = title
		@author = author
		@isbn = isbn
	end

	def borrow
		if self.lent_out? == true
			return false
		elsif self.lent_out? == false
			self.due_date = Book.current_due_date
			@@on_loan << self
			@@on_shelf.delete(self)
			return true
		end
	end

	def return_to_library
		if self.lent_out? == false
			return false
		elsif self.lent_out? == true
			@@on_shelf << self
			@@on_loan.delete(self)
			self.due_date = nil
			return true
		end
	end

	def lent_out?
		if @@on_loan.include?(self)
			return true
		elsif @@on_shelf.include?(self)
			return false
		end
	end

	def self.create(title, author, isbn)
		new_book = Book.new(title, author, isbn)
		@@on_shelf << new_book
		return new_book
	end

	def self.current_due_date
		Time.now + 604800
	end

	def self.overdue_books
		@@on_loan.each do |book|
			if book.due_date > Book.current_due_date
				p book
			end
		end
	end

	def self.browse
		return @@on_shelf.sample
	end

	def self.available
		return @@on_shelf
	end

	def self.borrowed
		return @@on_loan
	end

end

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect # #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.available.inspect # [#<Book:0x00555e82acde20 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431">, #<Book:0x00555e82acdce0 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # []
puts sister_outsider.lent_out? # false
puts sister_outsider.borrow # true
puts sister_outsider.lent_out? # true
puts sister_outsider.borrow # false
puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
puts Book.overdue_books.inspect # []
puts sister_outsider.return_to_library # true
puts sister_outsider.lent_out? # false
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
puts Book.borrowed.inspect # []
