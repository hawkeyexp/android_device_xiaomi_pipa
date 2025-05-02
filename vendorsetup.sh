#!/bin/bash

# Function to clone if directory doesn't exist
clone_if_missing() {
    local repo_url=$1
    local branch=$2
    local target_dir=$3
    
    if [ ! -d "$target_dir" ]; then
        echo "Cloning $repo_url to $target_dir"
        git clone "$repo_url" -b "$branch" "$target_dir"
    else
        echo "$target_dir already exists, skipping clone"
    fi
}

# Git clones
clone_if_missing "https://github.com/ai94iq/android_device_xiaomi_sm8250-common" "vic" "device/xiaomi/sm8250-common"
clone_if_missing "https://github.com/ai94iq/android_kernel_xiaomi_sm8250" "vic" "kernel/xiaomi/sm8250"
clone_if_missing "https://github.com/ai94iq/proprietary_vendor_xiaomi_sm8250-common" "vic" "vendor/xiaomi/sm8250-common"
clone_if_missing "https://github.com/ai94iq/proprietary_vendor_xiaomi_pipa" "vic" "vendor/xiaomi/pipa"
clone_if_missing "https://github.com/ai94iq/android_hardware_xiaomi" "vic" "hardware/xiaomi"
