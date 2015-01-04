require_relative 'src/uvecs'

namespace :tesselate do
  desc "Tesselates a dodecahedron and returns its vertices projection to the unit sphere"
  task :dodeca, [:tess_level] do |t,args|
    dodeca = UVecs::Polyhedron::Dodecahedron.new

    args[:tess_level].to_i.times do
      dodeca.triangulate!
    end

    puts dodeca.vertex.count
    dodeca.vertex.map(&:unit).each do |vertex|
      puts vertex.to_s
    end
  end
end