#region MIT_License
#
# Copyright (C) 2023 github.com/MAGGen-hub, M.A.G.Gen.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#endregion

#region UsedResources
# That project was inspired by: https://godotengine.org/asset-library/asset/1095
#
# Resources that used to create that plugin
# Code examples andexplanations by Alexis:
#	https://www.alexisgiard.com/icosahedron-sphere/
#	https://www.alexisgiard.com/icosahedron-sphere-remastered/
#	https://github.com/alexisgea/sphere_generator/blob/master/Assets/SphereGenerator/Scripts/Builders/SphereBuilder.cs
# Explanation how to UV map Icosphere by Michael Thygesen:
#	https://mft-dev.dk/uv-mapping-sphere/
# Code examples by kaiware007:
#	https://github.com/kaiware007/IcoSphereCreator/blob/master/Assets/IcoSphereCreator/IcoSphereCreator.cs
#endregion
@tool
extends EditorPlugin
func _enter_tree() -> void:
	add_custom_type("IcoSphereMesh", "ArrayMesh", preload("IcosphereMesh.gd"), preload("IcoSphereMesh.svg"))

func _exit_tree() -> void:
	remove_custom_type("IcoSphereMesh")
