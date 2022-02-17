# upload files to a remote host using identity file and non-standard port (include all files in current folder)
scp -P <port> -i <identityfile> * <user>@99.88.77.66:<absolute_path_to_save_files>
