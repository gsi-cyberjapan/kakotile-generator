# kakotile-generator
A tool to generate kakotile tileset from backup tileset, in Ruby

# What is this?
A ruby script to generate kakotile tileset from backup tileset.

# How to use
## To generate kakotile tileset
Copy [kakotile.rb](https://github.com/gsi-cyberjapan/kakotile-generator/blob/master/kakotile.rb) to the directory you have {z} directories and run:
```
ruby kakotile.rb
```
then you will have kakotile/{z}/{x}/{y}.csv files. If your tiles have other file extension than '.png', then please edit kakotile.rb to set your extension in EXT variable.

In other words, you will have http://example.com/folder/{t}/kakotile/{z}/{x}/{y}.csv for http://example.com/folder/{t}/{z}/{x}/{y}.{ext} after you run kakotile.rb.

## To view backup tiles using kakotile
Copy [kakotile.html](https://github.com/gsi-cyberjapan/kakotile-generator/blob/master/kakotile.html) to the directory you have {z} directories and open http://your_server/your_folder/{t}/kakotile.html .

# See also
- [kakotile-spec](https://github.com/gsi-cyberjapan/kakotile-spec/): Specifications for kakotile - metadata tileset for backup tiles
- [qdltc](https://github.com/gsi-cyberjapan/qdltc/): Tile downloader using GSI Tile List (mokuroku)
- [cocotile-spec](https://github.com/gsi-cyberjapan/cocotile-spec): Cocotile tileset is a metadata tileset for a set of tilesets. Cocotile and kakotile shares similar design concept as metatadata tilesets.
