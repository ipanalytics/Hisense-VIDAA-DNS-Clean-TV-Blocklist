#!/usr/bin/awk -f

# Convert the canonical AdGuard list to a human-readable domain reference.
# Active rules become bare hostnames; disabled rules remain commented out.

/^![[:space:]]+\|\|[A-Za-z0-9.-]+\^$/ {
    domain = $0
    sub(/^![[:space:]]+\|\|/, "", domain)
    sub(/\^$/, "", domain)
    print "// " domain
    next
}

/^\|\|[A-Za-z0-9.-]+\^$/ {
    domain = $0
    sub(/^\|\|/, "", domain)
    sub(/\^$/, "", domain)
    print domain
    next
}

/^!/ {
    line = $0
    sub(/^![[:space:]]?/, "//", line)
    print line
    next
}

{ print }
