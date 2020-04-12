# Quick developer guide

## Disclaimer

This was translated with google translate from the original Russian at hhrhhr/Lua-utils-for-Rebel-Galaxy and may have some mistranslations although human reviewed (by a non-russian speaker). If you know Russian you'd better off with the original file.

## Introduction

The game uses two main string types:
* STRING - single-byte encoded strings.
* TRANSLATE - UTF8 encoded strings.

## Notes on Cyrillic character support

In the presence of TrueType (TTF) or bitmap fonts with correct Unicode Cyrillic support, STRING type strings can be used to display Russian letters when using CP-1251 encoding. TRANSLATE type also depends on fonts, no fallback mechanism is provided, so CTD occurs in the absence of the desired glyph.

The main problem with translation is when a string was reused in different contexts in-game whence it is not actual in the target language. For instance, the english for "CARGO" can be used as a type of game element (a "cargo item", like the Tachyon Salt or Soy Paste), the identifier of an UI element (the "cargo" tab in system menu), and the prefix in the description of the former items mentioned (that sometimes is 'water', when mined off ice shards). As a TODO, for all such lines, you can change the identifier to any unused string to separate the translation string from the other conflicting items in the internal dictionary (so far, supported only by manual mapping).

## Preparation

Edit variables in `0-include.cmd`; `RGDIR` (the path to the installed game) and `WORK` (the path to the working directory, in which the unpacking/editing will take place). The remaining variables are used in the other batch files and should not required to be changed.

## Unpacking

1. run the `1-unpack_DAT.cmd` script. The subdirectories `unpack_` with `*.DAT`, `*.IMAGESET` and `*.ANIMATION` files will be created in the working directory.

2. run the `2-generate_strings_list.cmd` script. After scanning the unpacked resources, the following files should appear:
 * `list_all_string.txt` - an alphabetically sorted list with lines of the form `index, type, "string"`, where type is `S` (string) or `T` (translate).
 * `lang_original.lua` - a pair of tables with index sorting by all string values ​​(by default, taken only from `*.DAT` files).
 * `list_conflicted_ids.lua` - a list of **conflicting** lines that are simultaneously represented by the types STRING and TRANSLATE. That is, lines that cannot be directly translated (and altered in general) without manually being mapped.
 * `list_duplicated_ids.lua` - a list of strings with the same identifier but different values. In the original game PAK file there should be no duplicates.
 * `lang_original.pbm` - a graphical representation of a string dictionary's fill. The black dots represents the missing (unknown) keys; the white dots represents the existing ones.

3. run the `3-export_DAT.cmd` script. The effective extraction of all previously unpacked resources will begin (from step 1), from this points new files will show up in the working directory:
* `list_missing_ids.txt` - a list of all unknown variable names in the form of their hash. Only affects the readability and understanding of exported scripts. This list is a result of code from the `dict_missing.lua` script.

## Translation

**English translator note:** It seems this toolset was written mainly to allow translating Rebel Galaxy to Russian (although the currently released version does have Russian language support)

1. create a subdirectory `translate_DAT` in the working directory, in which the translated scripts (copied from `unpack_DAT`) should be located with the directory hierarchy preserved.
2. do the translation work
3. run the `991-strings_check.cmd` script. It verifies and compares the changed lines in the `translate_DAT` directory with the original from `unpack_DAT`, the expected output should be:
 * `t_list_all_string.txt` - an intermediate dictionary, used during internal script tasks.
 * `t_list_conflicted_ids.txt` - lines that need to be translated back to their original value (see `list_conflicted_ids.lua`).
 * `t_list_duplicated_ids.lua` - **in normal circumstances this file should be empty**. It will contain a list of strings that have the same identifier, but different values. This can happen if an ID is present in several files, and during the translation process they result in different output. For each conflict, the original value (commented out) and at least two lines are printed. This file must be edited to ensure the lines are mapped into unique IDs; only then the following step can be started.
4. (if `t_list_duplicated_ids.lua` is not empty) run the `992-update_strings.cmd`. This script will check whether the modifications in the file ensures unique IDs for each entity to be translated.
 * When this step is run, step 3 needs to be repeated, hoping the `t_list_duplicated_ids.lua` file is empty as a result.
 * If the script is empty, then proceed to step 5.
 * If the script is still not empty, then it is needed to find all the original files containing the listed lines and copy them to the `translate_DAT` directory. It would only work though, if these lines can be actually translated (for instance the word "CARGO" which may be used in context other than a single translation may apply). In this case, within the list of duplicate rows, you will have to return the original values ​​and repeat this step once again (?? may have something lost in translation, this is kind a tricky step).
5. run the `993-import_translate.cmd` script. All scripts from the `translate_DAT` directory will be imported into the `import_DAT` directory (with a preliminary cleanup) appropriately converted for archiving and re-packing.
6. as a final check, run the `994-strings_last_check.cmd` script. It will run verifications between the original and imported .DAT files. As a result, another output file `z_list_duplicated_ids.lua`, which should be empty, will be created.