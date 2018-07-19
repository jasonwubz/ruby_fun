#this was my solution for the ruby koans path to enlightment proxy challenge

class Proxy
  def initialize(target_object)
    @object = target_object
    # ADD MORE CODE HERE
    
    if @object.instance_of?(Television)
        
        def @object.messages
            [:power, :channel=]
        end
        
        def @object.init
            @counters = Hash.new(0)
        end
        
        @object.init
        
        def @object.number_of_times_called(method_name)
           @counters[method_name]
        end
        
        def @object.addcount(method_name)
            @counters[method_name] += 1
        end
        
        def @object.called?(method_name)
            @counters[method_name] > 0
        end
        
    elsif @object.instance_of?(::String)
        def @object.messages
            [:upcase!, :split]
        end
    end

  end

  # WRITE CODE HERE

  def method_missing(method_name, *args, &block)
      if @object.instance_of?(Television)
        @object.addcount(method_name)
        @object.send(method_name, *args)
      else
        @object.send(method_name, *args)
      end
  end
    
end