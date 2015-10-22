class DashboardController < ApplicationController
 def index

 @new_books = Book.count
 @total_books = Book.count

 end
end
