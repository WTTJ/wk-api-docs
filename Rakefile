namespace :deploy do
  def deploy(env)
    system "bundle exec middleman build"
    if env == :preprod
      system "sed -i 's/www.welcomekit.co/preprod.welcomekit.co/g' build/index.html"
    end
    puts "Deploying to #{env}"
    system "TARGET=#{env} bundle exec middleman deploy"
  end

  task :preprod do
    deploy :preprod
  end

  task :production do
    deploy :production
  end
end
