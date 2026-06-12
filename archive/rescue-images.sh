#!/usr/bin/env bash
# Rescue images from Framer's CDN into this site before deploying.
# Run from the site folder:  bash rescue-images.sh
set -e
mkdir -p assets/images

curl -L --fail -o "assets/images/lobby-hero.png" "https://framerusercontent.com/images/W2HrOqdUiNceWLadwcq7FT1jxE.png"
curl -L --fail -o "assets/images/lobby-flows.png" "https://framerusercontent.com/images/zuqDC01gaR3htUMe9LTHiEzWyG4.png"
curl -L --fail -o "assets/images/lobby-journey.png" "https://framerusercontent.com/images/8QKJpliGVpSDy72JkY2oAb8E.png"
curl -L --fail -o "assets/images/lobby-system.png" "https://framerusercontent.com/images/c96RlN6Zz7heudoWE3eughVPgPc.png"
curl -L --fail -o "assets/images/hypha-hero.png" "https://framerusercontent.com/images/13N9OelFUZE7pq1uJCagGiX8Q.png"
curl -L --fail -o "assets/images/hypha-brand.jpeg" "https://framerusercontent.com/images/eUCjXdzkNuqWbIZDAhMzKD3zI.jpeg"
curl -L --fail -o "assets/images/hypha-flows.png" "https://framerusercontent.com/images/bMmNp6oxSZbtWrF1Qjj8NACdco.png"
curl -L --fail -o "assets/images/hypha-roadmap.png" "https://framerusercontent.com/images/rkZkGNeFbSTH8lS6VelGLgqjIQ.png"
curl -L --fail -o "assets/images/circles-hero.png" "https://framerusercontent.com/images/jI1MB2nwIeoCJE3qjGjbDNI918.png"
curl -L --fail -o "assets/images/circles-flows.png" "https://framerusercontent.com/images/VyNSLZTtFwgtxp0XHJB2jI2yg.png"
curl -L --fail -o "assets/images/circles-ux.png" "https://framerusercontent.com/images/d2vB0aL5ob0jSd05r38uMjAAnUs.png"
curl -L --fail -o "assets/images/circles-community.jpg" "https://framerusercontent.com/images/iYqCr1H0lOGnlSEryx8jiJrvVC4.jpg"
curl -L --fail -o "assets/images/chase-hero.png" "https://framerusercontent.com/images/2jMLbUkzXfwJZKIz5XaoBAKg.png"
curl -L --fail -o "assets/images/chase-journey.jpeg" "https://framerusercontent.com/images/CPWOLXXWU3hkcYPpCq7YYhv7tS0.jpeg"
curl -L --fail -o "assets/images/chase-ui.png" "https://framerusercontent.com/images/peLHhc4OFhmJH3nNsfRcyxgCgdo.png"
curl -L --fail -o "assets/images/chase-responsive.png" "https://framerusercontent.com/images/mWCNyKTqbiXos0gybRExXCdZ0zs.png"
curl -L --fail -o "assets/images/memri-hero.png" "https://framerusercontent.com/images/3U5qJJhTefDzOnHlDbsp4SjEGQ.png"
curl -L --fail -o "assets/images/memri-dashboard.png" "https://framerusercontent.com/images/4EAqGbhIcK7gVs9PizxZmxMJ34w.png"
curl -L --fail -o "assets/images/memri-graph.png" "https://framerusercontent.com/images/K97xBDmFV3HLr1n5cUSoxtdzlUI.png"
curl -L --fail -o "assets/images/memri-proto.jpg" "https://framerusercontent.com/images/dK0NretMdJ0tLWmvXhWVsU9OPPM.jpg"
curl -L --fail -o "assets/images/sqsp-hero.png" "https://framerusercontent.com/images/5Vsewz4Tm8uIZArreoAi3EImEE.png"
curl -L --fail -o "assets/images/sqsp-store.png" "https://framerusercontent.com/images/KPsY4lX9I9EPbNn1ZnhCJLQ7LJo.png"
curl -L --fail -o "assets/images/sqsp-currency.jpg" "https://framerusercontent.com/images/V5Ha55bori18ApOWNJH3hjHrfU.jpg"
curl -L --fail -o "assets/images/sqsp-audio.png" "https://framerusercontent.com/images/MS2Pk4JGt9xRiT2nhPLkjTEXZ74.png"

echo "All $(ls assets/images | wc -l | tr -d \" \") images rescued."