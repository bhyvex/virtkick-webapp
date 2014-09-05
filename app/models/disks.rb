class Disks < Elements
  def usage
    used / size
  end

  def size
    sum &:size
  end

  def used
    sum &:used
  end

  def next_device_name
    NextDeviceName.new.next *map(&:device)
  end

  def find disk_id
    detect { |disk| disk.device == disk_id }
  end
end