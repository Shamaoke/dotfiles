
import os
import ycm_core

SOURCE_EXTENSIONS = ['.cpp']

def IsHeaderFile(filename):
  extension = os.path.splitext(filename)[1]

  return extension in ['.h', '.hpp']

def FindCorrespondingSourceFile(filename):
  if IsHeaderFile(filename):
    basename = os.path.splitext(filename)[0]

    for extension in SOURCE_EXTENSIONS:
      replacement_file = f'{basename}{extension}'

      if os.path.exists(replacement_file):
        return replacement_file

  return filename

def Settings(**kwargs):
  database = ycm_core.CompilationDatabase('../build/')
  filename = FindCorrespondingSourceFile(kwargs['filename'])
  compilation_info = database.GetCompilationInfoForFile(filename)
  flags = list(compilation_info.compiler_flags_)

  return {
    'flags': flags,
    'include_paths_relative_to_dir': compilation_info.compiler_working_dir_,
    'override_filename': filename
  }

## def Settings(**kwargs):
##   return {
##     'flags': [
##       '-isystem', '/usr/include/qt',
##       '-isystem', '/usr/include/qt/QtCore',
##     ]
##   }
     ## For details about `-isystem` and other flags see
     ## [Clang command line argument reference — Clang 21.0.0git documentation](https://clang.llvm.org/docs/ClangCommandLineReference.html)

