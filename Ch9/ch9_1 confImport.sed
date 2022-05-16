# By this line we are looking for lines in between a particular tag name only.
/^#<VirtualHost/ , /^#<\/VirtualHost/ {
# Substituting a hash with space.
s/^#/ /
w ch9_1 Ouput.txt    
}