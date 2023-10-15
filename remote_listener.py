import paramiko
import time
import os
import subprocess
import dutils
dutils.init()


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
            '--update',
            '--mkpath',
            "--progress",
            '--copy-links',
            f"{TARGET_HOST}:{REMOTE_FOLDER.rstrip(os.path.sep)+os.path.sep}",
            LOCAL_FOLDER,
        ]
        print(cmd)
        subprocess.run(cmd)            
        import time
        time.sleep(5)


    import dutils
    assert dutils.UNTESTED
