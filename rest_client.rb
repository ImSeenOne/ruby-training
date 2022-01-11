require 'rest-client'
require 'json'
require 'uri'

def beautify_array(arr, lvl=0)
    dist = (lvl > 0) ? "#{tab*lvl}" : ""
    if arr.is_a?(Hash) || arr.is_a?(Array)
        arr.each do |key, value|
            result_string += "#{check_keys(key, lvl)}"
            result_string += "#{check_values(value, lvl)}"
            
        end
        return result_string
    end
end

def check_keys(key, lvl)
    if(key.kind_of?(Hash) || key.kind_of?(Array))
        return "#{"\t"*lvl}#{beautify_array(key, lvl)}: "
    end
    if(key.kind_of?(String))
        return "#{"\t"*lvl}#{key}: "
    end
end

def check_values(value,  lvl)
    if(value.kind_of?(Hash) || value.kind_of?(Array))
        return "\n#{"\t"*lvl}#{beautify_array(value, lvl)}\n"
    end
    if(value.kind_of?(String) || value.kind_of?(Integer) || value == true || value == false || value =~ /\A#{URI::regexp}\z/)
        return "#{value}\n"
    end
end

response = RestClient.get('https://pokeapi.co/api/v2/pokemon/1')

results = JSON.parse(response.to_str)
name = results['forms'][0]['name']
print beautify_array(results)