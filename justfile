default: write

_deploy_palette VARIANT VARIANT_LOW DARK UUID \
    background currentline surface overlay foreground comment \
    cyan green orange pink purple red yellow \
    link string number character float keyword operator heading function builtin variable tag_name info todo focus_border changed_bg:
    sed \
        -e "s/@@VARIANT@@/{{VARIANT}}/g" \
        -e "s/@@VARIANT_LOW@@/{{VARIANT_LOW}}/g" \
        -e "s/@@DARK@@/{{DARK}}/g" \
        -e "s/@@UUID@@/{{UUID}}/g" \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@CURRENTLINE@@/{{currentline}}/g" \
        -e "s/@@SURFACE@@/{{surface}}/g" \
        -e "s/@@OVERLAY@@/{{overlay}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@ORANGE@@/{{orange}}/g" \
        -e "s/@@PINK@@/{{pink}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        -e "s/@@LINK@@/{{link}}/g" \
        -e "s/@@STRING@@/{{string}}/g" \
        -e "s/@@NUMBER@@/{{number}}/g" \
        -e "s/@@CHARACTER@@/{{character}}/g" \
        -e "s/@@FLOAT@@/{{float}}/g" \
        -e "s/@@KEYWORD@@/{{keyword}}/g" \
        -e "s/@@OPERATOR@@/{{operator}}/g" \
        -e "s/@@HEADING@@/{{heading}}/g" \
        -e "s/@@FUNCTION@@/{{function}}/g" \
        -e "s/@@BUILTIN@@/{{builtin}}/g" \
        -e "s/@@VARIABLE@@/{{variable}}/g" \
        -e "s/@@TAG_NAME@@/{{tag_name}}/g" \
        -e "s/@@INFO@@/{{info}}/g" \
        -e "s/@@TODO@@/{{todo}}/g" \
        -e "s/@@FOCUS_BORDER@@/{{focus_border}}/g" \
        -e "s/@@CHANGED_BG@@/{{changed_bg}}/g" \
        .Eldritch-@@VARIANT@@.tmTheme > themes/Eldritch-{{VARIANT}}.tmTheme

write:
    mkdir -p themes

    # Cthulhu palette (Default)
    just _deploy_palette "Cthulhu" "cthulhu" "dark" "5a823c67-10cd-4fe1-805a-1ee261c6c53c" \
        "#212337" "#323449" "#454759" "#5b5c66" "#ebfafa" "#7081d0" \
        "#04d1f9" "#37f499" "#f7c67f" "#f265b5" "#a48cf2" "#f16c75" "#f1fc79" \
        "#04d1f9" "#f1fc79" "#f16c75" "#f7c67f" "#f7c67f" "#37f499" "#04d1f9" "#a48cf2" "#f265b5" "#04d1f9" "#04d1f9" "#04d1f9" "#04d1f9" "#37f499" "#37f499" "#7081d0"

    # Abyss palette (Darker)
    just _deploy_palette "Abyss" "abyss" "dark" "7b934e81-22ef-4bf3-916b-2ff372d8d841" \
        "#171928" "#252738" "#353746" "#474852" "#d8e6e6" "#506299" \
        "#0396b3" "#2dcc82" "#d4a666" "#d154a1" "#8b75d9" "#cc5860" "#ccd663" \
        "#0396b3" "#ccd663" "#cc5860" "#d4a666" "#d4a666" "#2dcc82" "#0396b3" "#8b75d9" "#d154a1" "#0396b3" "#0396b3" "#0396b3" "#0396b3" "#2dcc82" "#2dcc82" "#506299"

    # Dusk palette (Light)
    just _deploy_palette "Dusk" "dusk" "light" "3f218a90-4c7b-4ef2-82a1-3ef893c4e56b" \
        "#f0f3f4" "#e2e6e8" "#d5d9db" "#c9cbcd" "#1e2029" "#5b73dc" \
        "#0ad6ff" "#38ff9f" "#ffaf4d" "#fb5bb6" "#8a69f7" "#fb5b66" "#fff952" \
        "#5b73dc" "#ffaf4d" "#8a69f7" "#fb5bb6" "#ffaf4d" "#8a69f7" "#5b73dc" "#8a69f7" "#8a69f7" "#5b73dc" "#5b73dc" "#5b73dc" "#8a69f7" "#8a69f7" "#8a69f7" "#ffaf4d"
