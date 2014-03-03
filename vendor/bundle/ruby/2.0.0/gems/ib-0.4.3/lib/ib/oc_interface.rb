class IB::OCInterface
  attr_reader :sub_class, :super_class, :outlets,
    :outlet_collections, :actions, :path

  class Outlet < Struct.new(:variable, :type);
    def formated_type
      type == "id" ? type : "#{type} *"
    end
  end

  class OutletCollection < Struct.new(:variable, :type); end

  class Action < Struct.new(:variable, :arg, :return_type)
    def to_declare
      arg ? "#{variable}:(#{return_type ? "#{return_type}*" : 'id'}) #{arg}" : "#{variable}"
    end
  end

  def initialize(params)
    @params             = params
    @sub_class          = params[:class][0][0]
    @super_class        = params[:class][0][1]
    @outlets            = create_instances(Outlet, params[:outlets])
    @outlet_collections = create_instances(OutletCollection, params[:outlet_collections])
    @actions            = create_instances(Action, params[:actions])
    @path               = params[:path]
  end

  def [](key)
    @params[key]
  end

  def super_class
    # for support `ProMotion` gem https://github.com/yury/ib/pull/45
    return 'UIViewController' if @super_class =~ /^(?:PM::|ProMotion::)/
    @super_class ||
      ((@sub_class == 'AppDelegate') ? 'UIResponder <UIApplicationDelegate>' : 'NSObject')
  end

  def sub_class_dependencies
    [
      @super_class,
      extract_types(@outlets),
      extract_types(@outlet_collections)
    ].flatten.uniq.compact.select { |klass| klass != 'id' }
  end

  def has_class?(klass)
    [sub_class, *sub_class_dependencies].any? { |k| k == klass }
  end

  def has_sub_class?(klass)
    sub_class == klass
  end

  private
  def create_instances(klass, array)
    Array(array).map { |x| klass.new(*x) }
  end

  def extract_types(array)
    Array(array).map { |x| x.type }.compact
  end

end
