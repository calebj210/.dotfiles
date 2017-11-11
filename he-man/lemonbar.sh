# Define Clock
clock() {
    DATETIME=$( date "+%a %b %d, %I:%M:%S")
    echo -n "$DATETIME"
}

# Define Battery
battery() {
    BATPERC=$(acpi -b | head -n1 | cut -d, -f2)
    echo -n "$BATPERC"
}

# Define Volume
volume() {
    VOLUME=$(amixer get Master | tail -n 1 | cut -d '[' -f 2 | sed 's/]*//g')
    echo -n "$VOLUME"
}

# Print
while true; do
    echo -e "%{B#2b2b2b}%{l}%{c}%{r}%{F#e6eeed}\uf242:$(battery)    %{F-}%{F#d5b32c} \uf028:$(volume)%{F-}%{F#b2161c}   \uf017: $(clock) %{F-}%{B-}"
    sleep 1s;
done
