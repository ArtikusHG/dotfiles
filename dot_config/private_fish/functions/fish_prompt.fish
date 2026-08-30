function fish_prompt
    set_color --bold blue
    echo -n "["(prompt_pwd)"] "
    set_color normal
end
