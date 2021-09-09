# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/raabro/all/raabro.rbi
#
# raabro-1.3.1

module Raabro
  def self.included(target); end
  def self.pp(tree, depth = nil, opts = nil); end
  extend Raabro::ModuleMethods
end
class Raabro::Input
  def at(i); end
  def initialize(string, offset = nil, options = nil); end
  def match(str_or_regex); end
  def offset; end
  def offset=(arg0); end
  def options; end
  def string; end
  def string=(arg0); end
  def tring(l = nil); end
end
class Raabro::Tree
  def c0; end
  def c1; end
  def c2; end
  def c3; end
  def c4; end
  def children; end
  def children=(arg0); end
  def clast; end
  def empty?; end
  def even_children; end
  def extract_error; end
  def gather(name = nil, acc = nil); end
  def initialize(name, parter, input); end
  def input; end
  def input=(arg0); end
  def length; end
  def length=(arg0); end
  def line_and_column(offset); end
  def lookup(name = nil); end
  def lookup_all_error; end
  def lookup_error(stack = nil); end
  def name; end
  def name=(arg0); end
  def nonstring(l = nil); end
  def odd_children; end
  def offset; end
  def offset=(arg0); end
  def parter; end
  def parter=(arg0); end
  def prune!; end
  def result; end
  def result=(arg0); end
  def strim; end
  def string; end
  def strinp; end
  def subgather(name = nil, acc = nil); end
  def sublookup(name = nil); end
  def successful_children; end
  def to_a(opts = nil); end
  def to_s(depth = nil, io = nil); end
  def visual(line, column); end
end
module Raabro::ModuleMethods
  def _match(name, input, parter, regex_or_string); end
  def _narrow(parser); end
  def _parse(parser, input); end
  def _quantify(parser); end
  def all(name, input, parser); end
  def alt(name, input, *parsers); end
  def altg(name, input, *parsers); end
  def eseq(name, input, startpa, eltpa, seppa = nil, endpa = nil); end
  def jseq(name, input, startpa, eltpa, seppa = nil, endpa = nil); end
  def last; end
  def last=(arg0); end
  def make_includable; end
  def method_added(name); end
  def nott(name, input, parser); end
  def parse(input, opts = nil); end
  def ren(name, input, parser); end
  def rename(name, input, parser); end
  def rep(name, input, parser, min, max = nil); end
  def reparse_for_error(input, opts, t); end
  def rewrite(tree); end
  def rewrite_(tree); end
  def rex(name, input, regex_or_string); end
  def seq(name, input, *parsers); end
  def str(name, input, string); end
end
