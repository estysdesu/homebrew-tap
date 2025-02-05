cask 'freecad' do
  version '0.19_pre,21718' # https://github.com/FreeCAD/FreeCAD/releases/download/0.19_pre/FreeCAD_0.19-21718-macOS-x86_64-conda.dmg
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.19_pre/FreeCAD_0.19-21718-macOS-x86_64-conda.dmg" # hardcode b/c can't drop '_pre' in URL path
  #url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.before_comma}/FreeCAD_#{version.major_minor}-#{version.after_comma}-OSX-x86_64-conda-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
