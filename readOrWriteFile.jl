function write_array_to_file(x::Array)
    try rm("outfile.out") catch end
    @elapsed writedlm("outfile.out",x)
end

function read_array_from_file(filepath::String)
    @elapsed x = readdlm(filepath)
end

function write_array_to_file(x::Array)
    try rm("outfile.out") catch end
    @elapsed writedlm("outfile.out",x)
end

function read_array_from_file(filepath::String)
    @elapsed x = readdlm(filepath)
end