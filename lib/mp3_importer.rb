require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files_import = files.select { |file| file.end_with?('mp3') }
    binding.pry
  end

  def import
    self.files_import.each { |file| Song.new_by_filename(file) }
  end
end
