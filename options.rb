module Options
  extend self

  def parameter(*names)
    names.each do |name|
      attr_accessor name

      define_method name do |*values|
        value = values.first
        value ? self.send("#{name}=", value) : instance_variable_get("@#{name}")
      end
    end
  end

  def config(&block)
    instance_eval &block
  end

end