#!/bin/sh

groups() {
        tail -f /tmp/grp/.fifo
}

while :; do
        buf=""
        buf="${buf} %{r}$(groups)"
        
        echo ${buf}
done
