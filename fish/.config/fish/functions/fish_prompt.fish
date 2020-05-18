#  d'b  o        8      
#  8             8      
# o8P  o8 .oPYo. 8oPYo. 
#  8    8 Yb..   8    8 
#  8    8   'Yb. 8    8 
#  8    8 `YooP' 8    8 
# :..:::..:.....:..:::..
# ::::::::::::::::::::::
# ::::::::::::::::::::::

## Left Prompt
function fish_prompt
    set fish_greeting
    set -l last_status $status
    
    # Show # or $
    set_color red
    if test (id -u) -eq 0
        echo -n ' # '
    else
        echo -n ' $ '
    end
    set_color normal
    echo -n ' '
end

# Right Prompt
 function fish_right_prompt
     echo -n ' '
     echo -n (prompt_pwd)
 end

## Window title
function fish_title
    echo -n 'fish in '
    prompt_pwd
end

        
## Coloring
set fish_color_autosuggestion white
set fish_color_command normal
set fish_color_comment white
set fish_color_cwd blue
set fish_color_cwd_root red
set fish_color_end magenta
set fish_color_error yellow
set fish_color_escape cyan
set fish_color_history_current cyan
set fish_color_host normal
set fish_color_match blue
set fish_color_normal normal
set fish_color_operator cyan
set fish_color_param blue
set fish_color_quote green
set fish_color_redirection blue
set fish_color_search_match --background=black
set fish_color_selection blue
set fish_color_status red
set fish_color_user red
set fish_pager_color_completion blue
set fish_pager_color_description yellow
set fish_pager_color_prefix cyan
set fish_pager_color_progress cyan
