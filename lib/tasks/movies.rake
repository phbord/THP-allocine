namespace :movies do
  desc "Seeds genres"
  task seed_genres: :environment do
    Genre.create!([{
      name: "Action"
    },
    {
      name: "Sci-Fi"
    },
    {
      name: "Aventure"
    },
    {
      name: "X"
    },
    {
      name: "Horreur"
    },
    {
      name: "Western"
    },
    {
      name: "Kung-fu"
    }])

    p "Created #{Genre.count} genres"
  end

end
