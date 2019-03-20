#! /usr/bin/wish
# bell        grab         scale                 tk_optionMenu     ttk::menubutton   
# bind        grid         scrollbar             tk_patchLevel     ttk::notebook     
# bindtags    image        selection             tk_popup          ttk::panedwindow  
# bitmap      keysyms      send                  tk_setPalette     ttk::progressbar  
# busy        label        spinbox               tk_strictMotif    ttk::radiobutton  
# button      labelframe   text                  tk_textCopy       ttk::scale        
# canvas      listbox      tk                    tk_textCut        ttk::scrollbar    
# checkbutton lower        tk::mac               tk_textPaste      ttk::separator    
# clipboard   menu         tk_bisque             tk_version        ttk::sizegrip     
# colors      menubutton   tk_chooseColor        tkerror           ttk::spinbox      
# console     message      tk_chooseDirectory    tkwait            ttk::style        
# cursors     option       tk_dialog             toplevel          ttk::treeview     
# destroy     options      tk_focusFollowsMouse  ttk::button       ttk::widget       
# entry       pack         tk_focusNext          ttk::checkbutton  ttk_image         
# event       panedwindow  tk_focusPrev          ttk::combobox     ttk_vsapi         
# focus       photo        tk_getOpenFile        ttk::entry        winfo             
# font        place        tk_getSaveFile        ttk::frame        wm                
# fontchooser radiobutton  tk_library            ttk::intro                          
# frame       raise        tk_menuSetFocus       ttk::label                          
# geometry    safe::loadTk tk_messageBox         ttk::labelframe 


# button .b -text "Exit" -command exit
# pack .b

# label .l -text "Label"
# pack .l


# console keyword argument
# button .b -text "Show Console" -command {console show}
# button .c -text "Message" -command {puts "My Message"}
# pack .b .c
# console hide


#  wm keyword window arguments
# wm title . "My Window"
# wm geometry . 320x240

    # toplevel — Create and manipulate 'toplevel' main and popup window widgets
    # SYNOPSIS
    # STANDARD OPTIONS
    #     -borderwidth or -bd, borderWidth, BorderWidth
    #     -cursor, cursor, Cursor
    #     -highlightbackground, highlightBackground, HighlightBackground
    #     -highlightcolor, highlightColor, HighlightColor
    #     -highlightthickness, highlightThickness, HighlightThickness
    #     -padx, padX, Pad
    #     -pady, padY, Pad
    #     -relief, relief, Relief
    #     -takefocus, takeFocus, TakeFocus
    # WIDGET-SPECIFIC OPTIONS
    #     -background, background, Background
    #     -class, class, Class
    #     -colormap, colormap, Colormap
    #     -container, container, Container
    #     -height, height, Height
    #     -menu, menu, Menu
    #     -screen, ,
    #     -use, use, Use
    #     -visual, visual, Visual
    #     -width, width, Width
    # DESCRIPTION
    # WIDGET COMMAND
    #     pathName cget option
    #     pathName configure ?option? ?value option value ...?

# toplevel .top -width 320 -height 240
# wm title .top "My Window"

# toplevel .top
# button .top.b -text "Close Me" -command {destroy .top}
# pack .top.b

# toplevel .top
label .msg -text "This is my Custom Dialog"
button .ok -text "OK" -command {destroy .top}
pack .ok -side bottom -fill x
pack .msg -expand 1 -fill both

