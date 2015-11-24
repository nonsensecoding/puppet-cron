# == Class: cron
#
# Manages Cron daemon and its directories to place cronjobs either manually or via puppet
#
#
# Maximilian Mayer <maximilian.mayer@sixt.de>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class cron (
  $cron_service_name = 'crond',
  $cron_dir_owner    = 'root',
  $cron_dir_group    = 'root',
  $cron_dir_mode     = '0755',
  $cron_dir_generic  = '/etc/cron.d',
  $cron_dir_hourly   = '/etc/cron.hourly',
  $cron_dir_daily    = '/etc/cron.daily',
  $cron_dir_weekly   = '/etc/cron.weekly',
  $cron_dir_monthly  = '/etc/cron.monthly',
)
{

  file { $cron_dir_generic:
    ensure => 'directory',
    owner  => $cron_dir_owner,
    group  => $cron_dir_group,
    mode   => $cron_dir_mode,
  }

  file { $cron_dir_hourly:
    ensure => 'directory',
    owner  => $cron_dir_owner,
    group  => $cron_dir_group,
    mode   => $cron_dir_mode,
  }

  file { $cron_dir_daily:
    ensure => 'directory',
    owner  => $cron_dir_owner,
    group  => $cron_dir_group,
    mode   => $cron_dir_mode,
  }

  file { $cron_dir_weekly:
    ensure => 'directory',
    owner  => $cron_dir_owner,
    group  => $cron_dir_group,
    mode   => $cron_dir_mode,
  }

  file { $cron_dir_monthly:
    ensure => 'directory',
    owner  => $cron_dir_owner,
    group  => $cron_dir_group,
    mode   => $cron_dir_mode,
  }

  service { $cron_service_name:
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
