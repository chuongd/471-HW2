INCLUDEDIR = /cse/courses/cse471/13sp/hw2-shared/include
OBJDIR = /cse/courses/cse471/13sp/hw2-shared/lib

CXXFLAGS += -I. -g -O0 -Wno-deprecated -I$(INCLUDEDIR)

all: $(TARG)

%.so : %.cpp
	$(CXX) -fPIC -shared $(CXXFLAGS) $(PIN_CXXFLAGS) -o $@ $< $(OBJDIR)/SMPCache.o $(OBJDIR)/Snippets.o $(OBJDIR)/nanassert.o

## cleaning
clean:
	-rm -f *.so

-include *.d
