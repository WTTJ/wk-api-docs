namespace :deploy do
  def deploy(env)
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
