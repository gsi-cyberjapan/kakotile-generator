require 'fileutils'
require 'time'
EXT = 'png'
Dir.entries('bak').map{|v| v.to_i.to_s == v ? v.to_i : nil}.
  compact.sort.each{|z|
  Dir.entries("bak/#{z}").map{|v| v.to_i.to_s == v ? v.to_i : nil}.
    compact.sort.each{|x|
    hash = Hash.new{|h, k| h[k] = []}
    Dir.entries("bak/#{z}/#{x}").map{|fn|
      (y, date, ext) = fn.split('.')
      next unless ext == EXT
      hash[y] << date
    }
    hash.each{|y, dates|
      #dates << File.mtime("#{z}/#{x}/#{y}.#{EXT}").iso8601.split('T')[0].gsub('-', '')
      content = dates.sort.reverse.join(',')
      print "#{z}/#{x}/#{y} => #{content}\n"
      path = "kakotile/#{z}/#{x}/#{y}.csv"
      FileUtils.mkdir_p(File.dirname(path)) unless File.directory?(File.dirname(path))
      File.open(path, 'w') {|w|
        w.print content, "\n"
      }
    }
  }
}
