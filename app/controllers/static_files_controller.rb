class StaticFilesController < ApplicationController


def dashboard
	today_bok = Booking.where("DATE(check_out) = ?", Date.today)

	today_exp = Expense.where("DATE(created_at) = ?", Date.today)

	today_bok_mon = Booking.where("check_out > ?", Date.today - Date.today.day )

	today_exp_mon = Expense.where("created_at > ?", Date.today - Date.today.day )

	@todays_earning = 0
	@todays_expence = 0

	today_bok.each do |t|
		@todays_earning += t.total.to_i
	end

	today_exp.each do |t|
		@todays_expence += t.amount.to_i
	end




	@todays_earning_mon = 0
	@todays_expence_mon = 0

	today_bok_mon.each do |t|
		@todays_earning_mon += t.total.to_i
	end

	today_exp_mon.each do |t|
		@todays_expence_mon += t.amount.to_i
	end



end


end