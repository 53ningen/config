#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.vimode_control_gG 1
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set option.vimode_control_bf 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl_rapid 1
/bin/echo -n .
$cli set option.vimode_control_hjkl 1
/bin/echo -n .
$cli set option.vimode_control_0dollar 1
/bin/echo -n .
/bin/echo
