require '../glfw'
require '../opengl'

include OpenGL
include GLFW
OpenGL.load_dll()
GLFW.load_dll()

if __FILE__ == $0
  glfwInit()
  window = glfwCreateWindow( 100, 100, "Report OpenGL Environment", nil, nil )
  glfwMakeContextCurrent( window )
  puts glGetString(GL_VERSION).to_s
  glfwTerminate()
end
