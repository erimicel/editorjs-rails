namespace :editorjs do
  desc "Install EditorJS into the app"
  task :install do
    if Rails.root.join("config/importmap.rb").exist?
      Rake::Task["editorjs:install:importmap"].invoke
    elsif Rails.root.join("package.json").exist?
      puts "Running with node (package.json) not supported at this stage."
    else
      puts "You must be running with importmap-rails (config/importmap.rb) to use this gem."
    end
  end
end
