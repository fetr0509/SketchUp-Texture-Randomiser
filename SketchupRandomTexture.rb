# Put in - C:\Users\USERPERSON\AppData\Roaming\SketchUp\SketchUp 2015\SketchUp\Plugins

# Created by Peter Fetros
# 2.16.15
# Version 1.0

require 'sketchup.rb'

UI.menu("PlugIns").add_item("Randomize Textures") {
  randomize_textures
}

def randomize_textures
  model = Sketchup.active_model
  selection = model.selection

  selection.each { |entity|
  if entity.typename == "Face"
	pt_array = []
	pt_array[0] = Geom::Point3d.new(rand(500),rand(500),rand(500))
	pt_array[1] = Geom::Point3d.new(rand(500),rand(500),rand(500))
	entity.position_material(entity.material, pt_array, true)
  end
  }
end