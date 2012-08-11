Super simple fact for Puppet/Facter.  Returns a fact for eacg EXT2/3/4 or NFS filesystem

    $ facter| grep disk
    disk_nfs => /nfs;nfs;100G;25%used
    disk_sda1 => /boot;ext3;99M;29%used
    disk_volgroup00-logvol00 => /;ext4;20G;25%used

