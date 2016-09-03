<?php

##########################################################################
# �Զ��������ļ�
# /var/www/html/ganglia/conf.php
##########################################################################

# ----------[��ʾ��������ͼ]
# Are heatmaps enabled
$conf['heatmaps_enabled'] = 1;

# ----------[����ʱ�䷶Χ��֧��ͨ��������ƽ�������]
# Enable Zoom support on graphs
$conf['zoom_support'] = true;

# ----------[����ʱ�䷶Χ]
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

# ----------[����Ĭ��ʱ������]
# this key must exist in $conf['time_ranges']
$conf['default_time_range'] = 'hour';

# ----------[����Ĭ����ʾָ��]
#
# Default metric 
#
$conf['default_metric'] = "load_one";

# ----------[��ʼ�۵�ָ���飺�����������ͼʱ��Ĭ��չ������ָ����]
# The following property controls whether the graphs contained in metric
# groups are initially displayed or collapsed
# $conf['metric_groups_initially_collapsed'] = false;
$conf['metric_groups_initially_collapsed'] = true;

# ----------[Ĭ��ˢ�����ڣ�������ͼ�ͼ�Ⱥ��ͼÿ5����(300��)ˢ��һ�Ρ�]
# 
# The default refresh frequency on pages.
#
$conf['default_refresh'] = 300;

# ----------[��ͼ����������ɾ��������gweb�ӿ���ͼ����Ĭ����ʾȫ������(FQDN)�����������ͬһ���п�ɾ��������]
#
# remove the domainname from the FQDN hostnames in graphs
# (to help with long hostnames in small charts)
#
$conf['strip_domainname'] = false;

# ----------[����rrdcached]
# If rrdcached is being used, this argument must specify the 
# socket to use.
#
# ganglia-web only requires, and should use, the low-privilege socket
# created with the -L option to rrdcached.  gmetad requires, and must use,
# the fully privileged socket created with the -l option to rrdcached.
# $conf['rrdcached_socket'] = "";
$conf['rrdcached_socket'] = "unix:/var/run/rrdcached/rrdcached.limited.sock";

?>
