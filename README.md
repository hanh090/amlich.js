# amlich.js

[![Version](https://img.shields.io/npm/v/amlich.js.svg)](https://npmjs.org/package/amlich.js)

A Vietnamese lunar calendar calculator library written in JavaScript.

Another version which is written in Haskell https://github.com/codeaholicguy/halunar.

### Usage

#### As a Library

```js
computeDateToLunarDate(dd, mm, yy, timeZone)
computeDateFromLunarDate(lunarDay, lunarMonth, lunarYear, lunarLeap, timeZone)
```

Example:

```js
const {computeDateToLunarDate} = require('amlich.js')

console.log(computeDateToLunarDate(18, 7, 2018, 7))
// { lunarDay: 6, lunarMonth: 6, lunarYear: 2018, lunarLeap: false }
```

#### In tmux Status Bar

You can display the Vietnamese lunar calendar in your tmux status bar.

**Installation:**

1. Clone or install this repository
2. Add to your `~/.tmux.conf`:

```bash
# Replace /path/to/amlich.js with the actual path
set -g status-right "#(/path/to/amlich.js/bin/tmux-lunar-date) | %H:%M %d-%b-%y"
set -g status-interval 60
```

3. Reload tmux configuration:
```bash
tmux source-file ~/.tmux.conf
```

**Example output:**
```
21/10 | 1/9 AL
```

Where:
- `21/10` = Gregorian date (October 21st)
- `1/9 AL` = Lunar date (Day 1, Month 9, Âm Lịch/Lunar Calendar)
- Leap months are shown with `(nhuận)` suffix

See `tmux.conf.example` for more configuration options.

### License

[MIT](LICENSE)

### Reference

[Computing the Vietnamese lunar calendar](https://www.informatik.uni-leipzig.de/~duc/amlich/calrules_en.html)
