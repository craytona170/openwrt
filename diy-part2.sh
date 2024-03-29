#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.4/g' package/base-files/files/bin/config_generate
sed -i 's/ssid=OpenWrt/ssid=WiFi_R4AGv2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/OpenWrt /HI build $(TZ=UTC-8 date "+%Y.%m.%d") @ X86 /g" package/lean/default-settings/files/zzz-default-settings
