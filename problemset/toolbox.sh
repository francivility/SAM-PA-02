#!/bin/bash
# toolbox.sh provides a menu-driven administration tool for system and file tasks
# Author: France Mhary Jasareno, BSIT 4C

show_account() {
    echo "You are $USER on $HOSTNAME"
    id
}

show_disk() {
    df -h /
}

count_items() {
    local folder="$1"
    if [[ ! -d "$folder" ]]; then
        echo "Not a folder: $folder"
        return 1
    fi
    local count
    count=$(ls -1A "$folder" | wc -l)
    echo "$folder has $count item(s)"
}

backup_folder() {
    local folder="$1"
    if [[ ! -d "$folder" ]]; then
        echo "Not a folder: $folder"
        return 1
    fi
    mkdir -p ~/backups
    local base_name
    base_name=$(basename "$folder")
    local date_str
    date_str=$(date +%F)
    local archive="$HOME/backups/${base_name}_${date_str}.tar.gz"
    if tar -czf "$archive" -C "$(dirname "$folder")" "$base_name"; then
        echo "Saved ~/backups/${base_name}_${date_str}.tar.gz"
    fi
}

while true; do
    echo "===== ADMIN TOOLBOX ====="
    echo "1) My account"
    echo "2) Disk usage"
    echo "3) Count items in a folder"
    echo "4) Back up a folder"
    echo "5) Exit"
    read -p "Choose: " choice

    case "$choice" in
        1)
            show_account
            ;;
        2)
            show_disk
            ;;
        3)
            read -p "Folder (full path): " target_dir
            count_items "$target_dir"
            ;;
        4)
            read -p "Folder to back up (full path): " backup_dir
            backup_folder "$backup_dir"
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice: $choice"
            ;;
    esac
done