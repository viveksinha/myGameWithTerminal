# batch convert mkv to mp4
#!/bin/sh
findpath=$1
: ${findpath:="."}

find "$findpath" -name '*.mkv' | while read f ; do
    dir=$(dirname "$f");
    file=$(basename "$f");
    # ext="${filename##*.}";
    name="${file%.*}";
    # echo "avconv -i \"$f\" -codec copy \"$dir/$name.mp4\"";
    avconv -i "$f" -codec copy "$dir/$name.mp4" </dev/null;
    # rm -f "$f";
done