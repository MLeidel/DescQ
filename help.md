
# Quick Reference for Descq

[Details](README.html "Descq")

## Overview

- **Searches:** Launch Internet searches effortlessly.
- **Clipboard Archiving:** Save and retrieve clipboard text.
- **URL Management:** Quickly archive and re-access URLs.
- **Custom Commands:** Define and run personalized command aliases.

---

## Basic Usage

- **General Search:**  
  Type a search query and press **Enter**.

- **Save a URL:**  
    Type, paste, or drag & drop the URL into the entry box.  
    Press **Enter** or click the ■ button.

- **Save Clipboard Text:**  
    Type `sc` and press **Enter** or click the ■ button.  
    If the entry box is empty, simply clicking ■ will save the current clipboard text.

- **List of saved URLS**  
    Type `list` and press **Enter** or click the ■ button.  
    A dialog of saved urls appears. Select one or more to re-launch in browser.

- **History of save searches**  
    Type `hist` and press **Enter** or click the ■ button.  
    A dialog of saved search queries appears. Select one or more to re-launch in browser.

---

## Other Commands

| Command   | Description                                                   |
|-----------|---------------------------------------------------------------|
| `x`       | Exit the program.                                             |
| `T`       | Start the date/time display.                                  |
| `es`      | Edit the `serv.txt` file.                                     |
| `eh`      | Edit the `hist.txt` file.                                     |
| `ec`      | Edit the `clip.txt` file.                                     |
| `eu`      | Edit the `urls.txt` file.                                     |
| `ee`      | Edit the `editor.txt` file.                                   |
| `eq`      | Edit the `search.txt` file.                                   |
| `help`    | View the help file (this document).                           |
| `rs`      | Random String                                                 |
| `list`    | Display a dialog box listing saved URLs.                      |
| `hist`    | Display a dialog box listing search history.                  |
| `serv`    | Display a dialog box listing your `serv.txt` commands.        |
| `cap`     | Toggle the window caption bar.                                |
| `top`     | Toggle the window level (topmost on screen).                  |
| `winset`  | Save current window size and position in `winmet.txt`.        |

**Additional Keyboard Shortcuts:**

- **Up & Down Arrow Keys:** Scroll through the last 10 commands.
- **Esc Key:** Clear the entry field and stop the time display.

---

## Advanced Features

### Submitting Multiple Commands or Searches

- **Delimiter:** Use the pipe symbol `|` to separate multiple commands or searches in a single input.

### Execute Applications or URLs from the Command Line

- **Syntax:** Prefix the command or URL with `$` or `>`.
  - Example:  
    - `$https://example.com`  
    - `>gedit`

### Evaluate Mathematical Expressions

- **Syntax:** Begin with `=`
  - Example:  
    - `=3^5 / 2.5`

### Evaluate Date Calculations

- **Syntax:** Begin with `%`
  - Examples:
    - `% +1 year + 2 months + 2 days`
    - `% +200 days`
    - `% 2021-04-01 + 100 days`

### Fine Window Positioning

- **Syntax:** Begin with `@`
  - Examples:
    - `@height:-3`
    - `@top:14`
  - _Note:_ The pixel values are adjusted relative to the current window position. Refer to the `cap` command for details.

---

## Creating Custom Aliases

Aliases allow you to create shortcuts for frequently used commands. Define them in the `serv.txt` file with the following format:

```
alias_name, command_or_URL &
```

**Examples:**

- **News Update:**  
  `news, https://microsoftnews.msn.com &`
  
- **Reboot System:**  
  `reboot, reboot`
  
- **Launch Htop in Terminal:**  
  `htop, sakura -t "htop" -c 150 -r 45 -x htop &`

---

## Querystring-Specific URL Requests

You can create URL (service) aliases in the **`serv.txt`** file using the format `L:` for query-based URLs.

**Sample Format:**

```
alias_shortcut, Description, Base_URL
```

**Examples:**

- **Google Maps:**  
  `m, Google Maps, https://www.google.com/maps/search/`
  
- **PHP Manual Lookup:**  
  `p, Php, http://php.net/manual-lookup.php?pattern=`
  
- **Amazon Keyword Search:**  
  `a, Amazon, https://smile.amazon.com/s/ref=nb_sb_noss_1?field-keywords=`
  
- **Generic URL:**  
  `u, URL, https://`
  
**Usage:**  
When you type the alias followed by a colon and your query, the text in the entry field is appended to the base URL.  
For example:
  - `m:Madison Wisconsin`
  - `p:setcookie`
  - `a:mini computers`
  - `u:example.com`

---

## File Locations

Descq uses files stored under `/usr/local/descq-data/`:

- `clip.txt` — Stores all saved clipboard text (accessed via commands like `sc` or `ec`).
- `editor.txt` — Contains the name of your preferred text editor.
- `search.txt` — Holds the URL for your default search engine.
- `help.txt` — This help document.
- `hist.txt` — Maintains your search history.
- `serv.txt` — Stores user alias commands and targeted search URLs.
- `urls.txt` — Contains saved URLs.
- `winmet.txt` — Saves window metrics (size and position).

---

## Configuring the Search Engine

By default, Descq uses the DuckDuckGo search engine. To change the search engine, edit the `search.txt` file (or use the `ee` command) and replace its content with your preferred search URL. Some popular options include:

- [Google Search](https://www.google.com/search?q=):  
  `https://www.google.com/search?q=`
  
- [Brave Search](https://search.brave.com/search?q=):  
  `https://search.brave.com/search?q=`
  
- [DuckDuckGo](https://duckduckgo.com/?q=):  
  `https://duckduckgo.com/?q=`
  
- [Bing](https://www.bing.com/search?q=):  
  `https://www.bing.com/search?q=`
  
- [Google Scholar](https://scholar.google.com/scholar?q=):  
  `https://scholar.google.com/scholar?q=`
  
- [Yahoo Search](https://search.yahoo.com/search?p=):  
  `https://search.yahoo.com/search?p=`

### Consider Using DuckDuckGo

DuckDuckGo is highly recommended because it supports hundreds of "Bang" commands, allowing quick access to various services:

**Examples of DuckDuckGo Bangs:**

- **Google Maps:** `!m`
- **Google Search:** `!g`
- **Amazon:** `!a`
- **Images:** `!gimg` or `!pics`
- **PHP:** `!php`
- **YouTube:** `!ytus`
- **Golang:** `!golang` or `!godoc`
- **Python:** `!py3k` or `!py`
- **StackOverflow:** `!so`, `!sof`, `!ov`, or `!ddso`
- **MDN:** `!mdn`
- **List of All Bangs:** `!bang`

Some of the other browsers accept "bang" commands as well.

---

## Using Descq from the Shell

If you want to use Descq from your command line:

1. **Ensure:** Descq is included in your system's PATH.
2. **Limitations:** Only commands defined in the `serv.txt` file and Internet searches will work.
3. **Tip:** Run `descq list` to print the contents of `serv.txt` to the console.

---

## Summary

Descq combines the functionality of a search engine launcher, clipboard manager, and custom command executor into one lightweight tool. Whether you're quickly searching the web, saving important URLs and text, or setting up custom aliases for frequent commands, Descq is designed to streamline your workflow.

Happy searching and commanding!

