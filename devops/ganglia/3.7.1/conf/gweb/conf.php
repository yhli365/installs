<?php

##########################################################################
# 自定义配置文件
# /var/www/html/ganglia/conf.php
##########################################################################

# ----------[显示利用率热图]
# Are heatmaps enabled
$conf['heatmaps_enabled'] = 1;

# ----------[调整时间范围：支持通过鼠标手势进行缩放]
# Enable Zoom support on graphs
$conf['zoom_support'] = true;

# ----------[调整时间范围]
# 
# Time ranges
# Each value is the # of seconds in that range.
#
$conf['time_ranges'] = array(
   'hour'=>3600,
   '2hr'=>7200,
   '4hr'=>14400,
   'day'=>86400,
   'week'=>604800,
   'month'=>2419200,
   'year'=>31449600,
   # Needs to be an entry here to support 'r=job' in the query args to graph.php
   'job'=>0
);

# ----------[设置默认时间周期]
# this key must exist in $conf['time_ranges']
$conf['default_time_range'] = 'hour';

# ----------[设置默认显示指标]
#
# Default metric 
#
$conf['default_metric'] = "load_one";

# ----------[初始折叠指标组：当点击主机视图时，默认展开所有指标组]
# The following property controls whether the graphs contained in metric
# groups are initially displayed or collapsed
# $conf['metric_groups_initially_collapsed'] = false;
$conf['metric_groups_initially_collapsed'] = true;

# ----------[默认刷新周期：主机视图和集群视图每5分钟(300秒)刷新一次。]
# 
# The default refresh frequency on pages.
#
$conf['default_refresh'] = 300;

# ----------[从图表主机名中删除域名：gweb接口在图表中默认显示全称域名(FQDN)，如果主机在同一域中可删除域名。]
#
# remove the domainname from the FQDN hostnames in graphs
# (to help with long hostnames in small charts)
#
$conf['strip_domainname'] = false;

# ----------[启用rrdcached]
# If rrdcached is being used, this argument must specify the 
# socket to use.
#
# ganglia-web only requires, and should use, the low-privilege socket
# created with the -L option to rrdcached.  gmetad requires, and must use,
# the fully privileged socket created with the -l option to rrdcached.
# $conf['rrdcached_socket'] = "";
$conf['rrdcached_socket'] = "unix:/var/run/rrdcached/rrdcached.limited.sock";

?>
