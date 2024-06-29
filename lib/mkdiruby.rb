if ARGV.empty? || ARGV.length > 1
  puts "Utilisation : ruby mkdiruby.rb <nom_du_dossier>"
  exit
end

folder_name = ARGV[0]
Dir.mkdir(folder_name)
puts "Dossier #{folder_name} créé."

File.open("#{folder_name}/Gemfile", "w") do |file|
  file.puts "source 'https://rubygems.org'"
  file.puts "gem 'ts4a_gem1'"
  file.puts "gem 'ts4a_gem2'"
  # Ajoute d'autres gems ici
end

puts "Gemfile créé dans #{folder_name}."

system("cd #{folder_name} && git init")
puts "Dépôt Git initialisé dans #{folder_name}."

File.open("#{folder_name}/.env", "w") do |file|
  # Ajoute des variables d'environnement ici si nécessaire
end

File.open("#{folder_name}/.gitignore", "a") do |file|
  file.puts ".env"
end

puts ".env créé et ajouté au .gitignore dans #{folder_name}."

Dir.mkdir("#{folder_name}/lib")
puts "Dossier lib créé dans #{folder_name}."

File.open("#{folder_name}/Readme.md", "w") do |file|
  file.puts "# Projet Ruby : #{folder_name}"
  file.puts "Description du projet ici."
end

puts "Readme.md créé dans #{folder_name}."
