# Endpoint-Security-Setup

This repository contains configurations for basic endpoint security, including antivirus and firewall setup based on Cisco Cybersecurity Scolarship Program 2024.

## Antivirus Setup

### Linux - ClamAV
1. Install ClamAV:
    ```bash
    sudo apt-get install clamav
    ```
2. Update virus definitions:
    ```bash
    sudo freshclam
    ```
3. Perform a scan:
    ```bash
    clamscan -r /home
    ```

### Windows - Windows Defender
1. Ensure Windows Defender is enabled and updated.
2. Schedule a scan via Task Scheduler:
    - Open Task Scheduler.
    - Create a new task and set the trigger to the desired schedule.
    - Set the action to `C:\Program Files\Windows Defender\MpCmdRun.exe` with arguments `-Scan -ScanType 2`.

## Firewall Setup

### Linux - UFW (Uncomplicated Firewall)
1. Enable UFW:
    ```bash
    sudo ufw enable
    ```
2. Allow SSH traffic:
    ```bash
    sudo ufw allow ssh
    ```
3. Block all incoming traffic except SSH:
    ```bash
    sudo ufw default deny incoming
    ```
4. Allow all outgoing traffic:
    ```bash
    sudo ufw default allow outgoing
    ```
5. Check UFW status:
    ```bash
    sudo ufw status
    ```

### Windows - Windows Firewall
1. Open Windows Firewall settings.
2. Create inbound and outbound rules to block or allow specific types of traffic.

## Testing
1. Verify antivirus is installed and running.
2. Test firewall rules by attempting to connect to blocked/allowed services.
