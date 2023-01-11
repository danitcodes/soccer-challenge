<div align="center">

# Soccer Challenge

_By Danielle Thompson <img src="https://camo.githubusercontent.com/1f92e28d8a9061aecae3b748b118d2bd97506672e84dbdff2e4c7c46e94345e9/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f2d4c696e6b6564496e2d626c61636b2e7376673f7374796c653d706c6173746963266c6f676f3d6c696e6b6564696e26636f6c6f72423d323836374232" data-canonical-src="https://img.shields.io/badge/-LinkedIn-black.svg?style=plastic&amp;logo=linkedin&amp;colorB=2867B2" style="max-width: 100%;"> 1/2023_

</div>

## Description

This simple problem is a script that reads a listing of game
results for a soccer league and prints the top teams at
the end of each match day.

### The rules

In this league, a draw (tie) is worth 1 point and a win is worth 3 points. A
loss is worth 0 points. If two or more teams among the top three teams have
the same number of points, they should have the same rank and be printed in
alphabetical order. That said, at most three teams should be listed in the
output per matchday.

### To Do

1. Open the txt file, read the file line by line, & save the data.
2. Recognize the start and end of a matchday w/script.
3. Output top 3 point-scoring matchday winners by matchday.
4. Output should be sorted by points first, highest to lowest, then by alphabetical order in case any team have equal points.

_Input_: txt file with results of games, one per line
`# of teams` / 2 = number of games played on each matchday

_Output_:

```print
Matchday 1
San Jose Earthquakes, 3 pts
Santa Cruz Slugs, 3 pts
Felton Lumberjacks, 2 pts

...
```
---

## User Stories

|  #  |  Stories  |
| --- |  --- |
|  1  |   A user should be able to tell when a matchday begins and ends. |
|  2  |   A user should be able to see the results of the top 3 point-scoring teams per matchday. |

---

## Technology Used

- [VS Code](https://code.visualstudio.com/download)
- Ruby v3.2.0
- rspec v3.12
- git v2.37.2 & GitHub

## Instructions

### Getting Started

<summary> Running the Project Locally </summary>

This project requires that you have Ruby, git, and a code editor of your choosing installed in your local system. If
that is not the case, the directions in "details" can help get you started.

<details>

#### For Mac Users

- Open a new Terminal window.
- If you don't already have it, install the package manager, [Homebrew](https://brew.sh/), on your device by
entering this line of code:
`$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`.
- Once homebrew is installed, install Git, a version control system for code writers, with this line of code:
`brew install git`.
- Install `ruby-install`, a tool for installing Ruby with `$ brew install ruby-install`.
- Install the latest version (as of 1/10/23) Ruby with `$ ruby-install ruby 3.2.0`.

#### For Windows Users

- Open a new Command Prompt window by typing "Cmd" in your computer's search bar.
- Determine whether you have 32-bit or 64-bit Windows by following these [instructions](https://support.microsoft.com/en-us/help/13443/windows-which-version-am-i-running).
- Go to [Git Bash](https://gitforwindows.org/), click on the "Download" button, and download the corresponding exe file from the Git for Windows site.
- Follow the instructions in the set up menu.
- To get Ruby set up on your computer, I would recommend following a guide like [this one](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby-on-windows), which will have more expertise than I can personally provide at this time.

</details>

### Cloning the Project

- Click the green 'Code' button in this repository to "Download Zip" & open the unzipped folder in your code editor of
choice. Alternately, in your CLI after navigating to your desktop folder with the command `cd Desktop`, use the
GitHub CLI command `gh repo clone danitcodes/soccer-challenge`.
- (Optional: If you would like to save your own copy of the repository to your GitHub account, click the "Fork" button
in the upper right hand corner of the main repository page.)
- Navigate to the folder 'soccer-capstone' from your CLI with the command `cd soccer-capstone`.
- Open the project in the code editing application of your choice, like VS Code, by running the command `code .` or
by R-clicking and opening.

### Setup

- Upon opening the project in a code editor, make sure to bundle required gems with `bundle`.

### Tests

- To run the test suit, run `rspec` in the root directory of the project from the terminal.

### Make It Go

- To run the script itself, type `ruby lib/game_results.rb <input>` into the terminal where `<input>` is the local
filepath of game results, e.g.

### Additional Notes

The `sample-input.txt` file has been included as an example input text file for this script to run with. If a file other than the example provided is needed to provide game inputs, that .txt file will simply need to be added to the root "soccer-challenge" folder, and the appropriate base file name will need to be substituted in the `static_filename` variable of the `lib/game_results.rb` file.

---

## Known Bugs // Suggested Features

Report bugs & request features [here](https://github.com/danitcodes/soccer-challenge/issues).

- No bugs known at this time.
- A feature that could be useful in the future if points are accumulative between matchdays is to output total points in all matches played by team.

<div align="center">

### Legal/License

This software is licensed under the [![GitHub](https://img.shields.io/github/license/danitcodes/-capstone)](https://choosealicense.com/licenses/mit/).<br/>
Copyright (c) 2023 *_Danielle Thompson_*

</div>
