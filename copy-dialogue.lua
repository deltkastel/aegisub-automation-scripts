script_name = "Copy dialogue" 
script_description = "Copies the selected lines to the clipboard."
script_author = "Deltkastel"
script_version = "1.0"

local clipboard = require 'aegisub.clipboard'

function copy_line(subs, sel, act)
    local clipboard_text = ""
    for i, idx in ipairs(sel) do
        clipboard_text = clipboard_text .. subs[idx].text
        if i < #sel then clipboard_text = clipboard_text .. "\n" end
    end
    clipboard.set(clipboard_text)
end

aegisub.register_macro(script_name, script_description, copy_line)
