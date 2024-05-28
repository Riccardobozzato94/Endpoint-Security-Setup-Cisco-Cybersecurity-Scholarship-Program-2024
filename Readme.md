# Advanced Endpoint Security Setup

This directory contains advanced configurations for endpoint security, including enhanced antivirus settings, firewall rules, and IDS setup.

## Advanced Antivirus Setup

### Linux - Sophos Antivirus
1. Install Sophos Antivirus:
    ```bash
    cd antivirus-setup
    ./install_sophos.sh
    ```

### Windows - Windows Defender
1. Ensure Windows Defender is enabled and updated.
2. Schedule a scan via Task Scheduler:
    - Open Task Scheduler.
    - Create a new task and set the trigger to the desired schedule.
    - Set the action to `C:\Program Files\Windows Defender\MpCmdRun.exe` with arguments `-Scan -ScanType 2`.

## Advanced Firewall Setup

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
5. Add custom rules (e.g., block a specific IP):
    ```bash
    sudo ufw deny from 192.168.1.100
    ```
6. Check UFW status:
    ```bash
    sudo ufw status
    ```

### Windows - Windows Firewall
1. Open Windows Firewall settings.
2. Create inbound and outbound rules to block or allow specific types of traffic.
3. Example: Block traffic from a specific IP address:
    - Open Windows Firewall.
    - Go to "Inbound Rules" and click "New Rule".
    - Select "Custom", then "Next".
    - Select "All programs", then "Next".
    - Add the IP address to block, then "Next".
    - Choose "Block the connection", then "Next".
    - Apply the rule to all profiles and give it a name, then "Finish".

## IDS Setup

### Linux - Snort
1. Install Snort:
    ```bash
    sudo apt-get install snort
    ```
2. Configure Snort to monitor network traffic:
    - Edit the configuration file: `/etc/snort/snort.conf`
    - Define the network ranges to monitor:
    ```bash
    ipvar HOME_NET 192.168.1.0/24
    ```
3. Start Snort:
    ```bash
    sudo snort -A console -i eth0 -c /etc/snort/snort.conf
    ```

## Testing
1. Verify advanced antivirus settings are applied and working.
2. Test advanced firewall rules by attempting to connect to blocked/allowed services.
3. Test IDS setup by generating test traffic and checking Snort alerts.
