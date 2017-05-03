from glob import glob
from pydub import AudioSegment

new_path = "result/"
for mp3_file in glob("*.mp3"):
    print(mp3_file)
    song = AudioSegment.from_mp3(mp3_file)
    song.export(new_path + mp3_file, format="mp3", parameters=["-filter:a", "atempo=1.5"])


