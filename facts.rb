
Facter.add("disks") do
        df = Facter::Util::Resolution.exec('df -TPh |egrep "ext|nfs" |  awk \'{printf "%s; %s ;%s ;%s full,",  $7, $2, $3, $6}\' | sed \'s/\,$//g\'')

        if df.nil?
                disks = ""
        else
                disks = df
        end
        setcode do
                disks
        end
end


