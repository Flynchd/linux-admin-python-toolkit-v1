import subprocess

def check_network_services():
    print("Checking Network Services:")
    cmd = ['netstat', '-tuln']
    output = subprocess.check_output(cmd).decode('utf-8')
    print(output)

def check_network_interfaces():
    print("Checking Network Interfaces:")
    cmd = ['ip', 'addr']
    output = subprocess.check_output(cmd).decode('utf-8')
    print(output)

# Call the functions
check_network_services()
check_network_interfaces()
