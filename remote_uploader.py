import dutils
dutils.init()
import subprocess
import paramiko
import time
import os
# from torchray.helpers.remote_listener import (load_ssh_config,get_remote_files_info,get_local_files_info,upload_new_files,download_new_files)

# TARGET_HOST = 'your.target.host.name'  # This should match a 'Host' entry in your SSH config
# REMOTE_FOLDER = '/path/to/remote/folder'
# LOCAL_FOLDER = '/path/to/local/folder'



if __name__ == "__main__":
    '''
    TARGET_HOST = 'your.target.host.name' # This should match a 'Host' entry in your SSH config
    REMOTE_FOLDER = '/path/to/remote/folder'
    LOCAL_FOLDER = '/path/to/local/folder'
    '''
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--target_host',type=str)
    parser.add_argument('--folder',type=str)
    args = parser.parse_args()
    TARGET_HOST = args.target_host
    LOCAL_FOLDER = REMOTE_FOLDER = args.folder
    while True:
        cmd = [
            "rsync",
            '-arz',
            # "-avz",  # Adjust your flags as necessary
            "--progress",
            '--copy-links',
            LOCAL_FOLDER.rstrip(os.path.sep)+os.path.sep,
            f"{TARGET_HOST}:{REMOTE_FOLDER}"
        ]
        print(cmd)
        subprocess.run(cmd)            
        import time
        time.sleep(5)

    # config = load_ssh_config()
    # host_config = config.lookup(TARGET_HOST)

    # if not os.path.exists(LOCAL_FOLDER):
    #     os.makedirs(LOCAL_FOLDER)

    # ssh = paramiko.SSHClient()
    # ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())  # This is insecure for production. Use proper host key verification.
    # ssh.connect(
    #     hostname=host_config['hostname'],
    #     port=host_config.get('port', 22),
    #     username=host_config.get('user'),
    #     key_filename=host_config.get('identityfile')
    # )

    # last_local_info = {}

    # try:
    #     while True:
    #         current_local_info = get_local_files_info(LOCAL_FOLDER)
    #         upload_new_files(LOCAL_FOLDER,REMOTE_FOLDER,TARGET_HOST,ssh, last_local_info, current_local_info)
    #         last_local_info = current_local_info
    #         time.sleep(10)  # Poll every 10 seconds
    # except KeyboardInterrupt:
    #     print("Listener terminated by user.")
    # finally:
    #     ssh.close()
