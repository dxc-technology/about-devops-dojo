require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  HTMLProofer.check_directory("./_site", {
  :directory_index_file => "index.html",
  :url_ignore => [
	/\/edit/,
	/\/issues/
	],
  :parallel => { :in_processes => 3}
}).run

end
