namespace :active_records_count do
  
  desc "Authors Count"
  task authors_count: :environment do
    puts "Authors Count = #{Author.count}"
  end

  desc "Books Count"
  task books_count: :environment do
    puts "Books Count = #{Book.count}"
  end

end
