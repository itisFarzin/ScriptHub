mkdir -p mp3 && ls *.flac | parallel -j $(nproc --all) 'ffmpeg -i {} -af "volume=0.1" "mp3/$(basename {} .flac | sed "s/ (FLAC)//").mp3"'
