CC = gcc

INC = -I. -I./FBGui/core  -I./FBGui/widgets -I./AVGui/ -I./apple -I../core/include -I./apple

CFLAGS = -g -O2 -D__uclinux=0 -DMUI_DEBUG

LDFLAGS = 

LIBS = -L../pclib -lfreetype -ljpeg -lpng -lgif -lpthread -lav -lIGRSStack -lIGRSUsb -lHTTPStack -lUPNPStack -lsqlite3



CORESRCFORDER=./FBGui/core/

WIDGETFORDER=./FBGui/widgets/

AVGUIFORDER=./AVGui/

APPLEFORDER=./apple/


CORESRC =$(CORESRCFORDER)mem.c $(CORESRCFORDER)screen.c $(CORESRCFORDER)utils.c $(CORESRCFORDER)class.c $(CORESRCFORDER)painter.c \
      $(CORESRCFORDER)font.c $(CORESRCFORDER)image.c $(CORESRCFORDER)manager.c $(CORESRCFORDER)widget.c \
      $(CORESRCFORDER)screenfb.c $(CORESRCFORDER)fontft2.c $(CORESRCFORDER)fontmft.c $(CORESRCFORDER)imgbmp.c $(CORESRCFORDER)imgicon.c\
      $(CORESRCFORDER)imgpng.c $(CORESRCFORDER)imggif.c $(CORESRCFORDER)imgjpg.c $(CORESRCFORDER)keyboard.c $(CORESRCFORDER)timer.c $(CORESRCFORDER)event.c \
      $(CORESRCFORDER)kbir_sigma.c $(CORESRCFORDER)kbir_davinci.c $(CORESRCFORDER)kb_default.c $(CORESRCFORDER)fontdat.c $(CORESRCFORDER)imgcaption.c


WIDGETSRC =$(WIDGETFORDER)label.c $(WIDGETFORDER)dockmenu.c $(WIDGETFORDER)textLabel.c $(WIDGETFORDER)dlabel.c $(WIDGETFORDER)listview.c $(WIDGETFORDER)iconview.c \
           $(WIDGETFORDER)progress.c $(WIDGETFORDER)letter.c $(WIDGETFORDER)spinbox.c $(WIDGETFORDER)dynamic.c $(WIDGETFORDER)sletter.c

GUISRC =$(AVGUIFORDER)cfgreader.c $(AVGUIFORDER)cfg.c $(AVGUIFORDER)global.c $(AVGUIFORDER)guievent.c $(AVGUIFORDER)lang.c $(AVGUIFORDER)mainform.c $(AVGUIFORDER)movieform.c \
        $(AVGUIFORDER)message.c $(AVGUIFORDER)browse.c $(AVGUIFORDER)movieplay.c $(AVGUIFORDER)moviemenubar.c $(AVGUIFORDER)musicform.c $(AVGUIFORDER)picform.c $(AVGUIFORDER)introduce.c $(AVGUIFORDER)volume.c \
        $(AVGUIFORDER)subtitle.c $(AVGUIFORDER)musicplay.c $(AVGUIFORDER)pictureplay.c $(AVGUIFORDER)picturemenubar.c $(AVGUIFORDER)picturecontrl.c $(AVGUIFORDER)downbrowse.c $(AVGUIFORDER)downform.c $(AVGUIFORDER)networksetting.c \
        $(AVGUIFORDER)moviecontrl.c $(AVGUIFORDER)moviesetting.c $(AVGUIFORDER)systemsetting.c $(AVGUIFORDER)picsetting.c $(AVGUIFORDER)audiosetting.c $(AVGUIFORDER)setting.c \
	$(AVGUIFORDER)diskbrowse.c $(AVGUIFORDER)diskform.c $(AVGUIFORDER)piclist.c $(AVGUIFORDER)musicsetting.c $(AVGUIFORDER)searchbrowse.c $(AVGUIFORDER)searchform.c $(AVGUIFORDER)downspeed.c\
	$(AVGUIFORDER)browselv.c $(AVGUIFORDER)setnfsletter.c $(AVGUIFORDER)setnfs.c $(AVGUIFORDER)setsmbletter.c $(AVGUIFORDER)setsmb.c $(AVGUIFORDER)downshare.c $(AVGUIFORDER)setshare.c $(AVGUIFORDER)downset.c \
	$(AVGUIFORDER)check.c

APPSRC =$(APPLEFORDER)appwidget.c $(APPLEFORDER)applistview.c $(APPLEFORDER)appcirclelistview.c $(APPLEFORDER)applabel.c $(APPLEFORDER)appitem.c $(APPLEFORDER)appcolumn.c \
        $(APPLEFORDER)appdownloaditem.c $(APPLEFORDER)appbutton.c $(APPLEFORDER)appfullscreenlistview.c $(APPLEFORDER)appiconitem.c $(APPLEFORDER)appdynamic.c \
        $(APPLEFORDER)imgbutton.c $(APPLEFORDER)imgprogress.c $(APPLEFORDER)uiloader.c $(APPLEFORDER)classcreator.c

SOURCES = $(CORESRC) $(WIDGETSRC) $(APPSRC) $(GUISRC) 



TESTSRC = $(AVGUIFORDER)main.c





OBJECTS = $(SOURCES:.c=.o)

TESTOBJS = $(AVGUIFORDER)main.o





TEST = test



all:$(TEST) $(CMFT) $(TESTIMG)





$(TEST):$(OBJECTS) $(TESTOBJS)

	$(CC) -o $@ $(LDFLAGS) $(OBJECTS) $(TESTOBJS) $(LIBS)



.c.o:

	$(CC)  $(INC) $(CFLAGS) -c -o $@ $<



clean:

	rm -rf $(OBJECTS) $(TESTOBJS) $(TEST)





