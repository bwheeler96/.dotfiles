require 'rake'
require 'erb'


FILES = `git ls-files`


desc "backs up your existing dotfiles that would otherwise be overwritten"
task :backup do

  puts FILES  

end

desc "install the dot files into user's home directory"
task :install do
  
  

  #replace_all = false
  #Dir['*'].each do |file|
  #  next if %w[Rakefile README.rdoc LICENSE].include? file
  #  
  #  if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
  #    if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
  #      puts "identical ~/.#{file.sub('.erb', '')}"
  #    elsif replace_all
  #      replace_file(file)
  #    else
  #      print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
  #      case $stdin.gets.chomp
  #      when 'a'
  #        replace_all = true
  #        replace_file(file)
  #      when 'y'
  #        replace_file(file)
  #      when 'q'
  #        exit
  #      else
  #        puts "skipping ~/.#{file.sub('.erb', '')}"
  #      end
  #    end
  #  else
  #    link_file(file)
  #  end
  #end
end