require 'opengl'
require 'glu'
require 'glut'

include GL
include Glu
include Glut

def display
  glDepthFunc(GL_LEQUAL)
  glEnable(GL_DEPTH_TEST)

  #glClearColor(0.0,0.0,0.0,0.0)
  glClearDepth(1.0)
  #glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

  #glMatrixMode(GL_PROJECTION)
  #glLoadIdentity
  #gluPerspective(60.0,1.0,1.0,100.0)

  glEnable(GL_LIGHTING)
  glEnable(GL_LIGHT0)
  glEnable(GL_COLOR_MATERIAL)
  glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE)
  glEnable(GL_NORMALIZE)
  glShadeModel(GL_SMOOTH)

  position = [80.0,50.0,100.0]
  color    = [1.0,1.0,1.0,1.0]
  ambient  = [0.2,0.2,0.2,1.0]
  glLightfv(GL_LIGHT0, GL_POSITION, position)
  glLightfv(GL_LIGHT0, GL_DIFFUSE, color)
  glLightfv(GL_LIGHT0, GL_SPECULAR, color)
  glMaterialfv(GL_FRONT_AND_BACK, GL_SHININESS, [0.0,10.0])
  glLightModelfv(GL_LIGHT_MODEL_AMBIENT, ambient)

  glClearColor(0.0,0.0,0.0,0.0)
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

  glMatrixMode(GL_PROJECTION)
  glLoadIdentity
  gluPerspective(60.0,1.0,1.0,100.0)

  #eye    = [0.0,800.0,0.0]
  #center = []
  #up     = [0.0,0.1,0.0]
  glMatrixMode(GL_MODELVIEW)
  glTranslatef(0.0,0.0,-2.0)
  #glRotatef(30,30,0,10)
  
  #glColor3f(0.0,1.0,1.0) 
  #glPushMatrix
    #glScalef(0.5,0.5,0.5)
    #glutWireSphere(1.0,20.0,20.0)
  #glPopMatrix

  #glColor3f(1.0,1.0,0.0) 
  #glPushMatrix
    #glScalef(0.5,0.5,0.5)
    #glTranslatef(-10.0,10.0,-50.0)
    #glutWireSphere(1.0,20.0,20.0)
  #glPopMatrix

  glColor3f(1.0,1.0,0.0) 
  glPushMatrix
    glScalef(0.5,0.5,0.5)
    #glTranslatef(-1.0,1.0,-5.0)
    glutWireSphere(1.0,20.0,20.0)
  glPopMatrix

  glColor3f(1.0,1.0,0.0)
  glPushMatrix
    glScalef(0.5,0.5,0.5)
    glTranslatef(10.0,-10.0,50.0)
    glutSolidSphere(1.0,20.0,20.0)
  glPopMatrix

  glColor3f(1.0,1.0,0.0)
  glPushMatrix
    glScalef(0.5,0.5,0.5)
    glTranslatef(-10.0,-10.0,50.0)
    glutSolidSphere(1.0,20.0,20.0)
  glPopMatrix

  glColor3f(1.0,1.0,0.0)
  glPushMatrix
    glScalef(0.5,0.5,0.5)
    #glTranslatef(-10.0,10.0,50.0)
    glutSolidSphere(1.0,20.0,20.0)
  glPopMatrix

  glFlush
  sleep(20) 
end

glutInit #permite crear ventana
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA | GLUT_DEPTH)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("Hola OpenGl, en ruby")
glutDisplayFunc :display
glutMainLoop