
class Strings
    def to_hash(str)
        if str==nil
            return ''
        end
        str=str.gsub(", :",', "')
        str=str.gsub("{:",'{"')
        str=str.gsub('=>','":')
        #str=str.gsub('\"','"')
    return str
    end
end  
