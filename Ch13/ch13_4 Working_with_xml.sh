#!/bin/bash
# we'll be using catalog.xml for this
# we define Field separator as any of the > or < symbol. 

awk -f 13_4_1.awk search=drill catalog.xml