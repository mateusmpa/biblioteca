class DashboardController < ApplicationController
    def index

        @seven_days_ago = (Time.zone.now - 7.days).midnight.strftime "%d/%m/%Y"
        @today = Time.now.strftime("%d/%m/%Y")

        @new_books = Book.where('created_at >= ?', Time.zone.now - 7.days).count # count books for a week (07 days)
        @new_books_month = Book.where('created_at >= ?', Time.zone.now - 1.months).count # count books for a month (30 days)

        @total_books = Book.count
    end
end
