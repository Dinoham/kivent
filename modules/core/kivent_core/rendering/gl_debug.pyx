from kivy.graphics.c_opengl cimport GLenum, glGetError
from kivy.logger import Logger

cdef void gl_log_debug_message(str name):
    cdef GLenum ret = glGetError()
    if ret:
        Logger.error("OpenGL Error (%s) %d / %x" % (name, ret, ret))
