# Lua-utils-for-Rebel-Galaxy

## Requirements
* Lua 5.3 (http://www.lua.org/download.html)
* lua-zlib (https://github.com/brimworks/lua-zlib)
* lua-lfs (https://github.com/keplerproject/luafilesystem)

Here is a prebuilt binary kit for Win x64, [lua_5.3.4_zlib_lfs_x64.zip] (https://mega.nz/#!e4xmWCQZ!NmDjowuExvA7NAV6ZO1CIXeFTzAisQiHUzvyhuFuHuM).

## Usage

### Works with .DAT archives

#### Unpacking
```
lua unpack.lua <INPUT.PAK> [OUTPUT / dir [FILTER]]
```

**Note:** output directory must exist. without it, the contents of the archive are output without unpacking (?? may have been lost in translation). If a FILTER is specified, only the selected resources of are unpacked:

| Filter | Contents |
| ------ | -------- |
| 1 | MESH / MDL |
| 2 | SKELETON |
| 3 | DDS |
| 4 | PNG / TGA / BMP | 
| 6 | OGG / WAV |
| 9 | MATERIAL |
| 10 | RAW |
| 12 | IMAGESET |
| 13 | TTF |
| 15 | DAT |
| 16 | LAYOUT |
| 17 | ANIMATION |
| 24 | PROGRAM |
| 25 | FONTDEF |
| 26 | COMPOSITOR |
| 27 | FRAG / FX / HLSL / VERT |
| 29 | PU |
| 30 | ANNO | 
| 31 | SBIN |
| 32 | WDAT |

A numeric prefix of the form `XX_file_name` is added to the names of all files, where `XX` is the in-game resource type. This is required for the packaging script so as not to store the type in a separate file (?? lost in translation).

#### Packing
```
lua pack.lua <INPUT / dir> [OUTPUT.PAK]
```

**Note:** the default used archive name is `DATA2.PAK`, output in the current directory. The first level of the input directory should contain only the `MEDIA` directory.

### Resources

#### Lua Scripts converter from/to DAT format

```
lua dat2lua.lua <INPUT.DAT> [OUTPUT.lua]
lua lua2dat.lua <INPUT.lua> [OUTPUT.DAT]
```

**Note:** without specifying the second parameter, *dat2lua* directs the output to the console; *lua2dat* though, sends to the *OUT.DAT* file in current directory.

The conversion results into a valid Lua script, which can be used for the reverse conversion (lua to DAT). At the beginning of the file is a string dictionary, the rest of the string values ​​are taken from the hash tables `dict_ (types | ext) .lua`. If there is no dictionary, the hash is written as `_XXXXXX`, where `XXXXXX` is its numerical value.

Similarly images and animation files can be converted from/to DAT with these tools (types 12 (IMAGESET) and 17 (ANIMATION)).

#### TXT and XML converter from/to DAT format

```
lua dat2txt.lua <INPUT.DAT> [DEBUG] [> OUTPUT.txt]
lua dat2xml.lua <INPUT.DAT> [> OUTPUT.xml]
```

### Hash verification
```
lua hasher.lua <STRING1> [STRING2 [STRING3 [...]]
```

Hash calculation for `STRINGx` string(s) and its output (decimal value, string, hexadecimal value):
```
> lua hasher.lua STRING1 1STRING
1829089533, "STRING1", --0x6D05B0FD
3815255475, "1STRING", --0xE3682DB3
```

### Hash selection
```
lua hash_brut.lua <HASH> [STRING] [DEPTH]

    HASH: required hash
    STRING: immutable leading characters or empty string ("")
    NUMBER: depth (i.e. the number of characters to be searched)
```
The default dictionary is uppercase alphanumeric, and underscore (`0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_`).

#### Examples
Search for a hash in a string, six characters long, starting with `CHA`:
```
> lua hash_brut.lua 44150820 CHA 3
44150820 CHANCE
keys found: 1
```
full enumeration of all four-character combinations:
```
> lua hash_brut.lua 7057780 "" 4
7057780 UNJ4
7057780 UNIT
keys founded: 2
```
A collision occurred here, since the hash algorithm used is rather unstable.

## Additional notes

`conflict_ids.lua` is a list of identifiers that are used in both STRING and TRANSLATE types. Therefore, these lines cannot be translated (converted to Unicode). Some of these identifiers are even used as variable names in scripts.
