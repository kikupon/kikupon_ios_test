class CAAnimation

  class << self

    def basic(target, key_path, options={}, &block)
      animation = CABasicAnimation.animationWithKeyPath(key_path)
      animation.duration = options[:duration] if options[:duration]
      animation.delegate = options[:delegate] if options[:delegate]

      if options.key?(:from) || options.key?(:to) || options.key?(:by)
        add_animation = options.fetch(:add, true)

        animation.fromValue = options[:from] if options[:from]
        animation.toValue = options[:to] if options[:to]
        animation.byValue = options[:by] if options[:by]
      else
        add_animation = options.fetch(:add, false)
      end

      if add_animation
        target.addAnimation(animation, forKey:key_path)
        target.send("#{key_path}=", options[:to])
      end

      block.call(animation) if block
      return animation
    end

  end

end
