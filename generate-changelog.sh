curr="$(git describe --tag --match "release-*")"
prev="$(git describe --tag --match "release-*" --abbrev=0 ${curr}^)"

ver="${curr#release-}"

echo "qbittorrent-enhanced ($ver) unstable; urgency=low"
echo ""
git --no-pager log --format="  * %s" $prev..$curr
echo ""
git --no-pager log --format=" -- %an <%ae>  %aD" -n 1 $curr
echo ""
