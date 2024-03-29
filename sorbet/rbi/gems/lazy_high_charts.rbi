# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/lazy_high_charts/all/lazy_high_charts.rbi
#
# lazy_high_charts-1.6.1

module LazyHighCharts
  def self.root; end
end
module LazyHighCharts::Rails
end
class LazyHighCharts::Rails::Engine < Rails::Engine
end
class String
  def js_code(true_or_false = nil); end
  def js_code?; end
end
module LazyHighCharts::OptionsKeyFilter
  def self.date_to_js_code(date); end
  def self.filter(options); end
  def self.format_data(data); end
  def self.format_data_item(item); end
  def self.milliseconds(value); end
end
module LazyHighCharts::LayoutHelper
  def build_globals_html_output(object); end
  def build_html_output(type, placeholder, object, &block); end
  def encapsulate_js(core_js); end
  def generate_json_from_array(array); end
  def generate_json_from_hash(hash); end
  def generate_json_from_value(value); end
  def high_chart(placeholder, object, &block); end
  def high_chart_globals(object); end
  def high_graph(placeholder, object, &block); end
  def high_graph_stock(placeholder, object, &block); end
  def high_stock(placeholder, object, &block); end
  def js_end; end
  def js_start; end
  def options_collection_as_string(object); end
  def request_is_referrer?; end
  def request_is_xhr?; end
  def request_turbolinks_5_tureferrer?; end
  include ActionView::Helpers::TagHelper
end
class ActionView::Base
  include LazyHighCharts::LayoutHelper
end
class LazyHighCharts::HighChart
  def arguments_to_options(args); end
  def canvas; end
  def canvas=(arg0); end
  def deep_merge_options(name, opts); end
  def defaults_options; end
  def full_options; end
  def html_options; end
  def html_options=(arg0); end
  def initialize(canvas = nil, html_opts = nil); end
  def merge_options(name, opts); end
  def method_missing(meth, opts = nil); end
  def options; end
  def options=(arg0); end
  def placeholder; end
  def placeholder=(arg0); end
  def random_canvas_id; end
  def series(opts = nil); end
  def series_data; end
  def series_data=(arg0); end
  def series_options; end
  def to_json; end
  include LazyHighCharts::LayoutHelper
end
class LazyHighCharts::HighChartGlobals
  def initialize; end
  def merge_options(name, opts); end
  def method_missing(meth, opts = nil); end
  def options; end
  def options=(arg0); end
  include LazyHighCharts::LayoutHelper
end
class LazyHighCharts::Railtie < Rails::Railtie
end
