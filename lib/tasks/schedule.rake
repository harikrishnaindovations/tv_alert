namespace :schedule do
	task upcoming_tvshow: :environment do
		tvshows = TvShow.upcoming(30.minutes)
		tvshows.each do |tvshow|
			tvshow.notify_viewer
		end
	end
end