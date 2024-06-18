rm mihomo.yaml
# clash.yaml https://github.com/anaer/Sub/blob/main/mihomo.yaml
aria2c -d . --check-certificate=false --max-connection-per-server=5 --max-concurrent-downloads=10 --split=10 --min-split-size=1M --continue=true --optimize-concurrent-downloads=true --connect-timeout=3 --timeout=5 --lowest-speed-limit=10K --allow-overwrite=true  https://git.988896.xyz/https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml https://cf.ghproxy.cc/https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml https://jsd.cdn.zzko.cn/gh/anaer/Sub@main/mihomo.yaml https://jsd.onmicrosoft.cn/gh/anaer/Sub@main/mihomo.yaml https://fastraw.ixnic.net/anaer/Sub/main/mihomo.yaml https://ghproxy.net/https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml https://github.moeyy.xyz/https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml https://mirror.ghproxy.com/https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml https://cdn.jsdelivr.us/gh/anaer/Sub@main/mihomo.yaml https://fastly.jsdelivr.net/gh/anaer/Sub@main/mihomo.yaml https://gcore.jsdelivr.net/gh/anaer/Sub@main/mihomo.yaml https://testingcf.jsdelivr.net/gh/anaer/Sub@main/mihomo.yaml https://cdn.jsdelivr.net/gh/anaer/Sub@main/mihomo.yaml https://raw.cachefly.998111.xyz/anaer/Sub/main/mihomo.yaml https://raw.githubusercontent.com/anaer/Sub/main/mihomo.yaml

# mihomo-darwin-amd64.gz https://github.com/MetaCubeX/mihomo/releases
# aria2c -d . --check-certificate=false --max-connection-per-server=5 --max-concurrent-downloads=10 --split=10 --min-split-size=1M --continue=true --optimize-concurrent-downloads=true --connect-timeout=3 --timeout=5 --lowest-speed-limit=10K --allow-overwrite=true  https://git.988896.xyz/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://cf.ghproxy.cc/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://cors.isteed.cc/github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://dl.ghpig.top/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://download.nuaa.cf/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://download.scholar.rr.nu/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://download.yzuu.cf/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.con.sh/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.ddlc.top/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.jiasu.in/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.mixyun.cyou/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.mzec.top/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.nxnow.top/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://ghproxy.053000.xyz/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://ghproxy.cc/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://ghproxy.liuzhicong.com/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://ghproxy.net/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://git.814560.xyz/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://git.domob.org/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://hub.gitmirror.com/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://mirror.ghproxy.com/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://sciproxy.com/github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://slink.ltd/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://ghps.cc/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://521github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz https://gh.900110.xyz/https://github.com/MetaCubeX/mihomo/releases/download/v1.18.5/mihomo-darwin-amd64-v1.18.5.gz


# Check if there's a process listening on port 9090
# netstat -an | grep -q ":9090 .* LISTEN"
lsof -i :9090 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    # Update config
    curl -X PUT "http://127.0.0.1:9090/configs?force=true" \
         -H "Content-Type: application/json" \
         -H "Authorization: Bearer 666999" \
         -d '{"path":"","payload":""}'
    echo "UPDATE CONFIG SUCCESS"

    # Check if the 'ui' directory exists
    if [ ! -d "ui" ]; then
        echo "ui directory not exist, triggering upgrade ui"
        curl -X POST "http://127.0.0.1:9090/upgrade/ui" -H "Authorization: Bearer 666999" 
    fi
fi

# Wait for 3 seconds
sleep 3