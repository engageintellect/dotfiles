//-------------------------------------------
// HYPER TERMINAL
//-------------------------------------------

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    fontSize: 18,
    fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    cursorColor: '#fafafa',
    cursorAccentColor: '#171717',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    foregroundColor: '#fafafa',
    backgroundColor: '#171717',
    selectionColor: 'rgba(248,28,229,0.3)',
    borderColor: '#fafafa',
    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '20px 20px',


    //-------------------------------------------
    // TAILWIND COLORS
    //-------------------------------------------

    colors: {
      black: '#171717',
      red: '#C51E14',
	    green: '#16a34a',
      yellow: '#eab308',
      blue: '#2563eb',
      magenta: '#c026d3',
      cyan: '#0891b2',
      white: '#d4d4d4',
      lightBlack: '#525252',
      lightRed: '#FD6F6B',
      lightGreen: '#22c55e',
      lightYellow: '#eab308',
      lightBlue: '#3b82f6',
      lightMagenta: '#d946ef',
      lightCyan: '#06b6d4',
      lightWhite: '#fafafa',
    },



    //-------------------------------------------
    // TAILWIND COLORS
    //-------------------------------------------

    shell: 'C:\\Users\\r3dux\\AppData\\Local\\Microsoft\\WindowsApps\\ubuntu.exe',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: [],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: true,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },


  //-------------------------------------------
  // PLUGINS
  //-------------------------------------------

  plugins: ["hyper-pane"],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
