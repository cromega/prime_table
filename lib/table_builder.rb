class TableBuilder
  def initialize(io, header: nil, leader: nil)
    @io = io
    @header = header
    @leader = leader
    @rowid = 0
  end

  def table
    if @header
      header = @header.dup
      header.unshift(nil) if @leader
      @io.puts header.join("\t")
      @io.puts
    end

    if block_given?
      yield(self)
    else
      self
    end
  end

  def row(cells)
    row = cells.dup
    row.unshift(@leader[@rowid]) if @leader

    @io.puts row.join("\t")
    @rowid += 1
  end
end
    
