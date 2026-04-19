class FilesystemController < ApplicationController
  ROOT = Rails.root.join("fs").to_s()
  def index
    @files = Dir.children(ROOT).map do |name|
      file = File.join(ROOT, name)
      {
        name: name,
        dir?: File.directory?(file),
        size: File.size(file)
      }
    end
  end
end
