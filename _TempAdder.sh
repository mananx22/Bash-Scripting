read -p "Enter your message" msg
echo "$msg"
git add .
git commit -m "$msg"
echo "committing with message \"$msg\" "
git push