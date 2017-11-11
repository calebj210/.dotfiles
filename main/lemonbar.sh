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
    echo -e "%{B#2b2b2b}%{l}%{c}%{r}%{F#77bb16}\uf242:$(battery)    %{F-}%{F#0c81d4} \uf028:$(volume)%{F-}%{F#52abab}   \uf017: $(clock) %{F-}%{B-}"
    sleep 1s;
done
