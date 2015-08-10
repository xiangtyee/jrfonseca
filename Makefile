SIZE = 256

thumbnails: $(patsubst %.png,%_small.png,$(filter-out %_small.png,$(wildcard *.png)))

%_small.png: %.png
	convert $< -resize $(SIZE)x$(SIZE) $@

clean:
	rm $(wildcard *_small.png)
