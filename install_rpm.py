import subprocess

def install_rpm_package():
    # Prompt the user for the package name
    package_name = input("Enter the name of the RPM package to install: ")

    # Prepare the command
    cmd = ['sudo', 'yum', 'install', '-y', package_name]

    # Execute the command
    try:
        print(f"Installing {package_name}...")
        output = subprocess.check_output(cmd).decode('utf-8')
        print(output)
    except subprocess.CalledProcessError as e:
        print(f"An error occurred while installing {package_name}")
        print(str(e))

# Call the function
install_rpm_package()
