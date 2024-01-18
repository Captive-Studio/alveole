# desc "Explaining what the task does"
# task :alveole do
#   # Task goes here
# end

task :tailwind_engine_watch do
  require "tailwindcss-rails"
  # NOTE: tailwindcss-rails is an engine
  system "#{Tailwindcss::Engine.root.join("exe/tailwindcss")} \
         -i #{Alveole::Engine.root.join("app/assets/stylesheets/application.tailwind.css")} \
         -o #{Alveole::Engine.root.join("app/assets/builds/alveole.css")} \
         -c #{Alveole::Engine.root.join("config/tailwind.config.js")} \
         --minify -w"
end
