function write_array_to_file(x::Array)
    try rm("outfile.out") catch end
    @elapsed writedlm("outfile.out",x)
end

function read_array_from_file(filepath::String)
    @elapsed x = readdlm(filepath)
end

function write_array_to_binary(x::Array)
    try rm("outfile.bin") catch end
    @elapsed open("outfile.bin","w") do f
        serialize(f, x)
    end
end

function read_array_from_binary(filepath::String)
    @elapsed open(filepath,"r") do f
        x = deserialize(f)
    end
end