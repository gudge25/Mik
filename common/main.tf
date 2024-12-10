resource "routeros_system_scheduler" "startup" {
  name       = "disable-service-ports"
  on_event   = "/ip firewall service-port disable numbers=dccp,ftp,h323,irc,pptp,sctp,sip,tftp,udplite"
  start_time = "startup"
}

resource "routeros_dns" "router_dns_server" {
  allow_remote_requests = false
  servers               = ["9.9.9.9", "149.112.112.112"]
}

# Block
resource "routeros_system_scheduler" "scheduler0" {
  name     = "check-login-failures"
  interval = "5m"
  on_event = <<EOF
:local blockList "blocklist";
:local ttl "600m";
:local fiveMinutesAgo ([/system clock get time] - 00:05:00);
:local now [/system clock get time];

/log print where time>$fiveMinutesAgo time<$now message~"login failure";

:foreach logEntry in=[/log find time>$fiveMinutesAgo time<$now message~"login failure"] do={
    :local logMessage [/log get $logEntry message];

    :local ipStart [:find $logMessage "from "];
    :local ipEnd [:find $logMessage " via"];

    :if ($ipStart != -1 && $ipEnd != -1) do={
        :local ip [:pick $logMessage ($ipStart + 5) $ipEnd];

        :if ([:len $ip] > 0) do={
            /ip firewall address-list add list=$blockList address=$ip comment="Blocked due to login failure" timeout=$ttl;
        }
    }
}
  EOF
}
