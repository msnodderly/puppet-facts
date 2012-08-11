Super simple fact for Puppet/Facter.  Returns a fact for eacg EXT2/3/4 or NFS filesystem

  $ facter| grep disk
  disk_sda1 => /boot;ext3;99M;21%used
  disk_volgroup00-logvol00 => /;ext4;17G;21%used

