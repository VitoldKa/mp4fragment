# Video Segmentation Script

This repository contains a Bash script designed to process video files using FFmpeg on a Cygwin environment. The script leverages NVIDIA's CUDA technology for hardware acceleration and segments the video into 10-minute chunks.

## Features

- Splits videos into 10-minute segments.
- Ensures no overwriting of existing files.

## Prerequisites

- **Cygwin**: Ensure you have Cygwin installed on your Windows machine.
- **FFmpeg**: Install FFmpeg with NVIDIA support (`ffmpeg.exe`) in the specified directory (`/cygdrive/c/bin/`).
- **NVIDIA Drivers**: Ensure you have the necessary NVIDIA drivers and CUDA toolkit installed for hardware acceleration.
- **Bash**: The script is written in Bash, so you will need a Bash shell environment to run it.

## Usage

1. **Prepare Your Video Files**:
   - Place your video files in a directory that you will reference when running the script.

2. **Run the Script**:
   ```sh
   ./mp4fragment.sh /path/to/your/video/file.mp4
   ```
   Replace `/path/to/your/video/file.mp4` with the actual path to your video file.

3. **Output**:
   - The script will output segmented `.mp4` files in the same directory as the input file, with filenames formatted as `inputfilename.%03d.mp4`.

## License

This project is licensed under the GNU General Public License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Contact

For questions or comments, please open an issue on GitHub.

---

Feel free to modify the README to suit your specific needs or add more details as required.
