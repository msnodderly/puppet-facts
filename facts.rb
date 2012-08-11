df = Facter::Util::Resolution.exec('df -TPh |egrep "ext|nfs" |  awk \'{printf "%s; %s; %s; %s; %sused,", $1, $7, $2, $3, $6}\' | sed \'s/\,$//g\'')

if !df.nil? then

    mountpoints = df.split(",")
    mountpoints.each do |d|
        Facter.add("disk_#{d.split(";")[0].split("/")[-1]}") do 
            disk = d.split(" ")[1..-1]
            if disk.nil? then
                disk = "n/a"
            end
            setcode do
                disk
            end
        end
    end
end




