# Pride Fonts Emoji
A fork of the noto-emoji font that patches in more pride flags than default.

## About
For more info about this project, and download links visit the [homepage](https://pride-emojis.interfiber.dev)

## Completed items
NOTE: The transgender, and rainbow flag are not patched in as most fonts include them.
  - Lesbian Flag
  - Bisexual Flag
  - Pansexual Flag
  - Asexual Flag
  - Non-Binary Flag
  - Gender-Queer Flag
  - Gender-Fluid Flag
  - Intersex Flag
  - Agender Flag
  - Aromantic Flag
  - Demisexual Flag
  - Greysexual Flag
  - Philadelphia Pride Flag
  - Polyamory Flag

## How it works
Basically since unicode controls everything, we have to remove other emojis and replace them. Sadly this removes other emojis, but we try to only remove
useless emojis that nobody uses so it wont be so bad.

## Building Fonts
Building Pride Fonts Emoji requires:
- Python 3
- [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
- [pngquant](https://pngquant.org/)
- [zopflipng](https://github.com/google/zopfli)
- [cairo](https://www.cairographics.org/)
- [imagemagick](https://imagemagick.org/)

After the listed items are installed, run the following command in the repository to build the fonts
```shell
# create & activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# install python requirements
pip install -r requirements.txt

# built from source, the -j option will not limit the amount of jobs make will run, this will make it faster and also fix a bug.
# also time it so you can see how long it takes.
time make -j
```
## Font License
All built fonts are under SIL Open Font License, version 1.1.

## Credits
All credit for the original noto emojis goes to google.
All credit for the pride flags is to joypixels.
