#
 # This file is part of OpenModelica.
 #
 # Copyright (c) 1998-CurrentYear, Open Source Modelica Consortium (OSMC),
 # c/o Linköpings universitet, Department of Computer and Information Science,
 # SE-58183 Linköping, Sweden.
 #
 # All rights reserved.
 #
 # THIS PROGRAM IS PROVIDED UNDER THE TERMS OF GPL VERSION 3 LICENSE OR
 # THIS OSMC PUBLIC LICENSE (OSMC-PL) VERSION 1.2.
 # ANY USE, REPRODUCTION OR DISTRIBUTION OF THIS PROGRAM CONSTITUTES RECIPIENT'S ACCEPTANCE
 # OF THE OSMC PUBLIC LICENSE OR THE GPL VERSION 3, ACCORDING TO RECIPIENTS CHOICE.
 #
 # The OpenModelica software and the Open Source Modelica
 # Consortium (OSMC) Public License (OSMC-PL) are obtained
 # from OSMC, either from the above address,
 # from the URLs: http://www.ida.liu.se/projects/OpenModelica or
 # http://www.openmodelica.org, and in the OpenModelica distribution.
 # GNU version 3 is obtained from: http://www.gnu.org/copyleft/gpl.html.
 #
 # This program is distributed WITHOUT ANY WARRANTY; without
 # even the implied warranty of  MERCHANTABILITY or FITNESS
 # FOR A PARTICULAR PURPOSE, EXCEPT AS EXPRESSLY SET FORTH
 # IN THE BY RECIPIENT SELECTED SUBSIDIARY LICENSE CONDITIONS OF OSMC-PL.
 #
 # See the full OSMC Public License conditions for more details.
 #
 #/
#!
 #
 # @author Adeel Asghar <adeel.asghar@liu.se>
 #
 # RCS: $Id$
 #
 #/

QT += network core gui webkit xml xmlpatterns svg

TRANSLATIONS = Resources/nls/OMEdit_de.ts \
  Resources/nls/OMEdit_es.ts \
  Resources/nls/OMEdit_fr.ts \
  Resources/nls/OMEdit_it.ts \
  Resources/nls/OMEdit_ja.ts \
  Resources/nls/OMEdit_ro.ts \
  Resources/nls/OMEdit_ru.ts \
  Resources/nls/OMEdit_sv.ts \
  Resources/nls/OMEdit_zh_CN.ts

TARGET = OMEdit
TEMPLATE = app

# This is very evil, lupdate just look for SOURCES variable and creates translations. This section is not compiled at all :)
evil_hack_to_fool_lupdate {
  SOURCES += ../../OMPlot/OMPlotGUI/*.cpp
}

SOURCES += main.cpp \
  Util/backtrace.c \
  Util/Helper.cpp \
  MainWindow.cpp \
  ../../build/include/omc/scripting-API/OpenModelicaScriptingAPIQt.cpp \
  OMC/OMCProxy.cpp \
  Util/StringHandler.cpp \
  Modeling/MessagesWidget.cpp \
  Modeling/LibraryTreeWidget.cpp \
  Modeling/ModelWidgetContainer.cpp \
  Modeling/ModelicaClassDialog.cpp \
  Options/OptionsDialog.cpp \
  Editors/BaseEditor.cpp \
  Editors/ModelicaTextEditor.cpp \
  Editors/TransformationsEditor.cpp \
  Editors/DebuggerSourceEditor.cpp \
  Editors/TextEditor.cpp \
  Editors/CEditor.cpp \
  Editors/TLMEditor.cpp \
  Plotting/PlotWindowContainer.cpp \
  Component/Component.cpp \
  Annotations/ShapeAnnotation.cpp \
  Component/CornerItem.cpp \
  Annotations/LineAnnotation.cpp \
  Annotations/PolygonAnnotation.cpp \
  Annotations/RectangleAnnotation.cpp \
  Annotations/EllipseAnnotation.cpp \
  Annotations/TextAnnotation.cpp \
  Annotations/BitmapAnnotation.cpp \
  Component/ComponentProperties.cpp \
  Component/Transformation.cpp \
  Modeling/DocumentationWidget.cpp \
  Simulation/SimulationDialog.cpp \
  Simulation/SimulationOutputWidget.cpp \
  Simulation/SimulationProcessThread.cpp \
  Simulation/SimulationOutputHandler.cpp \
  Simulation/TLMCoSimulationDialog.cpp \
  Simulation/TLMCoSimulationOutputWidget.cpp \
  Simulation/TLMCoSimulationThread.cpp \
  FMI/ImportFMUDialog.cpp \
  Plotting/VariablesWidget.cpp \
  Options/NotificationsDialog.cpp \
  Annotations/ShapePropertiesDialog.cpp \
  Util/OMDumpXML.cpp \
  Util/Utilities.cpp \
  Util/diff_match_patch.cpp \
  TransformationalDebugger/TransformationsWidget.cpp \
  Debugger/GDB/CommandFactory.cpp \
  Debugger/GDB/GDBAdapter.cpp \
  Debugger/StackFrames/StackFramesWidget.cpp \
  Debugger/Locals/LocalsWidget.cpp \
  Debugger/Locals/ModelicaValue.cpp \
  Debugger/Breakpoints/BreakpointMarker.cpp \
  Debugger/Breakpoints/BreakpointsWidget.cpp \
  Debugger/Breakpoints/BreakpointDialog.cpp \
  Debugger/DebuggerMainWindow.cpp \
  Debugger/Attach/AttachToProcessDialog.cpp \
  Debugger/Attach/ProcessListModel.cpp \
  CrashReport/CrashReportDialog.cpp \
  OMC/Parser/OMCOutputParser.cpp \
  OMC/Parser/OMCOutputLexer.cpp

HEADERS  += Util/backtrace.h \
  Util/Helper.h \
  MainWindow.h \
  ../../build/include/omc/scripting-API/OpenModelicaScriptingAPIQt.h \
  OMC/OMCProxy.h \
  Util/StringHandler.h \
  Modeling/MessagesWidget.h \
  Modeling/LibraryTreeWidget.h \
  Modeling/ModelWidgetContainer.h \
  Modeling/ModelicaClassDialog.h \
  Options/OptionsDialog.h \
  Editors/BaseEditor.h \
  Editors/ModelicaTextEditor.h \
  Editors/TransformationsEditor.h \
  Editors/DebuggerSourceEditor.h \
  Editors/TextEditor.h \
  Editors/CEditor.h \
  Editors/TLMEditor.h \
  Plotting/PlotWindowContainer.h \
  Component/Component.h \
  Annotations/ShapeAnnotation.h \
  Component/CornerItem.h \
  Annotations/LineAnnotation.h \
  Annotations/PolygonAnnotation.h \
  Annotations/RectangleAnnotation.h \
  Annotations/EllipseAnnotation.h \
  Annotations/TextAnnotation.h \
  Annotations/BitmapAnnotation.h \
  Component/ComponentProperties.h \
  Component/Transformation.h \
  Modeling/DocumentationWidget.h \
  Simulation/SimulationOptions.h \
  Simulation/SimulationDialog.h \
  Simulation/SimulationOutputWidget.h \
  Simulation/SimulationProcessThread.h \
  Simulation/SimulationOutputHandler.h \
  Simulation/TLMCoSimulationOptions.h \
  Simulation/TLMCoSimulationDialog.h \
  Simulation/TLMCoSimulationOutputWidget.h \
  Simulation/TLMCoSimulationThread.h \
  FMI/ImportFMUDialog.h \
  Plotting/VariablesWidget.h \
  Options/NotificationsDialog.h \
  Annotations/ShapePropertiesDialog.h \
  Util/OMDumpXML.cpp \
  Util/Utilities.h \
  Util/diff_match_patch.h \
  TransformationalDebugger/TransformationsWidget.h \
  Debugger/GDB/CommandFactory.h \
  Debugger/GDB/GDBAdapter.h \
  Debugger/StackFrames/StackFramesWidget.h \
  Debugger/Locals/LocalsWidget.h \
  Debugger/Locals/ModelicaValue.h \
  Debugger/Breakpoints/BreakpointMarker.h \
  Debugger/Breakpoints/BreakpointsWidget.h \
  Debugger/Breakpoints/BreakpointDialog.h \
  Debugger/DebuggerMainWindow.h \
  Debugger/Attach/AttachToProcessDialog.h \
  Debugger/Attach/ProcessListModel.h \
  CrashReport/CrashReportDialog.h \
  OMC/Parser/OMCOutputParser.h \
  OMC/Parser/OMCOutputLexer.h

# Windows libraries and includes
win32 {
  QMAKE_LFLAGS += -enable-auto-import

  DEFINES += IMPORT_INTO=1

  CONFIG(debug, debug|release) {
  LIBS += -L../../build/lib/omc -lOMPlot -lomqwtd \
    -L../OMEditGUI/Debugger/Parser -lGDBMIParser \
    -L../../Parser -lantlr3 \
    -lOpenModelicaCompiler -lOpenModelicaRuntimeC -lfmilib -lModelicaExternalC -lomcgc -lpthread
  } else {
    # In order to get the stack trace in Windows we must add -g flag. Qt automatically adds the -O2 flag for optimization.
    # We should also unset the QMAKE_LFLAGS_RELEASE define because it is defined as QMAKE_LFLAGS_RELEASE = -Wl,-s in qmake.conf file for MinGW
    # -s will remove all symbol table and relocation information from the executable.
    QMAKE_CXXFLAGS += -g
    QMAKE_LFLAGS_RELEASE =
    LIBS += -L../../build/lib/omc -lOMPlot -lomqwt \
      -L../OMEditGUI/Debugger/Parser -lGDBMIParser \
      -L../../Parser -lantlr3 \
      # required for backtrace
      -L$$(OMDEV)/tools/mingw/bin -lintl-8 -lbfd -liberty -limagehlp \
      -lOpenModelicaCompiler -lOpenModelicaRuntimeC -lfmilib -lModelicaExternalC -lomcgc -lpthread
  }
  INCLUDEPATH += $$(OMDEV)/lib/omniORB-4.1.6-mingw/include \
    ../../3rdParty/qwt/build/include \
    ../../OMPlot/OMPlotGUI \
    ../../  ../../3rdParty/antlr/3.2/libantlr3c-3.2/ ../../3rdParty/antlr/3.2/libantlr3c-3.2/include ../../build/include/omc/c

} else { # Unix libraries and includes
  include(OMEdit.config)
  # On unix we use backtrace of execinfo.h which requires -rdynamic
  # The symbol names may be unavailable without the use of special linker
  # options.  For systems using the GNU linker, it is necessary to use
  # the -rdynamic linker option.  Note that names of "static" functions
  # are not exposed, and won't be available in the backtrace.
  CONFIG(release, debug|release){
      QMAKE_LFLAGS_RELEASE += -rdynamic
  }
}

LIBS += -lqjson
INCLUDEPATH += ../../3rdParty/qjson-0.8.1/build/include

INCLUDEPATH += . \
  Annotations \
  Component \
  CrashReport \
  Debugger \
  Debugger/Attach \
  Debugger/Breakpoints \
  Debugger/GDB \
  Debugger/Locals \
  Debugger/Parser \
  Debugger/StackFrames \
  Editors \
  FMI \
  Modeling \
  OMC \
  Options \
  Plotting \
  Simulation \
  TransformationalDebugger \
  Util \
  ../../build/include/omc/scripting-API

OTHER_FILES += Resources/css/stylesheet.qss \
  Debugger/Parser/GDBMIOutput.g \
  Debugger/Parser/GDBMIParser.h \
  Debugger/Parser/GDBMIParser.cpp \
  Debugger/Parser/main.cpp

# Please read the warnings. They are like vegetables; good for you even if you hate them.
CONFIG += warn_on

RESOURCES += resource_omedit.qrc

win32 {
  RC_FILE = rc_omedit.rc
}

DESTDIR = ../bin

UI_DIR = ../generatedfiles/ui

MOC_DIR = ../generatedfiles/moc

RCC_DIR = ../generatedfiles/rcc

ICON = Resources/icons/omedit.icns
