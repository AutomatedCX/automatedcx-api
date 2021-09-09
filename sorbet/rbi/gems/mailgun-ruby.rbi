# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mailgun-ruby/all/mailgun-ruby.rbi
#
# mailgun-ruby-1.2.4

module Mailgun
  def self.api_key; end
  def self.api_key=(arg0); end
  def self.api_version; end
  def self.api_version=(arg0); end
  def self.config; end
  def self.configure; end
  def self.domain; end
  def self.domain=(arg0); end
  def self.mailgun_host; end
  def self.mailgun_host=(arg0); end
  def self.protocol; end
  def self.protocol=(arg0); end
  def self.test_mode; end
  def self.test_mode=(arg0); end
end
class Mailgun::Chains
end
class Mailgun::Error < StandardError
  def initialize(message = nil, object = nil); end
  def object; end
end
class Mailgun::ParameterError < Mailgun::Error
end
class Mailgun::ParseError < Mailgun::Error
end
class Mailgun::CommunicationError < Mailgun::Error
  def code; end
  def initialize(message = nil, response = nil); end
end
class Mailgun::Suppressions
  def create_bounce(params = nil); end
  def create_bounces(data); end
  def create_complaint(params = nil); end
  def create_complaints(data); end
  def create_unsubscribe(params = nil); end
  def create_unsubscribes(data); end
  def delete_all_bounces; end
  def delete_bounce(address); end
  def delete_complaint(address); end
  def delete_unsubscribe(address, params = nil); end
  def extract_paging(response); end
  def get_bounce(address); end
  def get_complaint(address); end
  def get_from_paging(uri, params = nil); end
  def get_unsubscribe(address); end
  def initialize(client, domain); end
  def list_bounces(params = nil); end
  def list_complaints(params = nil); end
  def list_unsubscribes(params = nil); end
  def next; end
  def prev; end
end
class Mailgun::Client
  def communication_error(e); end
  def convert_string_to_file(string); end
  def delete(resource_path); end
  def disable_test_mode!; end
  def enable_test_mode!; end
  def endpoint_generator(api_host, api_version, ssl); end
  def get(resource_path, params = nil, accept = nil); end
  def initialize(api_key = nil, api_host = nil, api_version = nil, ssl = nil, test_mode = nil, timeout = nil); end
  def post(resource_path, data, headers = nil); end
  def put(resource_path, data); end
  def self.deliveries; end
  def send_message(working_domain, data); end
  def suppressions(domain); end
  def test_mode?; end
end
class Mailgun::Response
  def body; end
  def body=(arg0); end
  def code; end
  def code=(arg0); end
  def initialize(response); end
  def self.from_hash(h); end
  def to_h!; end
  def to_h; end
  def to_yaml!; end
  def to_yaml; end
end
class Mailgun::Address
  def initialize(api_key = nil); end
  def parse(addresses, syntax_only = nil); end
  def validate(address, mailbox_verification = nil); end
end
class Mailgun::OptInHandler
  def self.generate_hash(mailing_list, secret_app_id, recipient_address); end
  def self.validate_hash(secret_app_id, unique_hash); end
end
class Mailgun::MessageBuilder
  def add_attachment(attachment, filename = nil); end
  def add_campaign_id(campaign_id); end
  def add_custom_parameter(name, data); end
  def add_file(disposition, filedata, filename); end
  def add_inline_image(inline_image, filename = nil); end
  def add_recipient(recipient_type, address, variables = nil); end
  def add_tag(tag); end
  def body_html(html_body = nil); end
  def body_text(text_body = nil); end
  def bool_lookup(value); end
  def counters; end
  def deliver_at(timestamp); end
  def dkim(mode); end
  def from(address, vars = nil); end
  def header(name, data); end
  def initialize; end
  def list_unsubscribe(*variables); end
  def make_json(obj); end
  def message; end
  def message_id(data = nil); end
  def parse_address(address, vars); end
  def reply_to(address, variables = nil); end
  def set_click_tracking(tracking); end
  def set_custom_data(name, data); end
  def set_delivery_time(timestamp); end
  def set_dkim(mode); end
  def set_from_address(address, variables = nil); end
  def set_html_body(html_body = nil); end
  def set_message_id(data = nil); end
  def set_multi_complex(parameter, value); end
  def set_multi_simple(parameter, value); end
  def set_open_tracking(tracking); end
  def set_single(parameter, value); end
  def set_subject(subj = nil); end
  def set_test_mode(mode); end
  def set_text_body(text_body = nil); end
  def subject(subj = nil); end
  def test_mode(mode); end
  def track_clicks(mode); end
  def track_opens(mode); end
  def valid_json?(json_); end
  def variable(name, data); end
end
class Mailgun::BatchMessage < Mailgun::MessageBuilder
  def add_recipient(recipient_type, address, variables = nil); end
  def any_recipients_left?; end
  def count_recipients; end
  def domain; end
  def finalize; end
  def initialize(client, domain); end
  def message_ids; end
  def recipient_variables; end
  def reset_message; end
  def send_message; end
  def store_recipient_variables(recipient_type, address, variables); end
end
class Mailgun::Events
  def construct_url(paging = nil); end
  def each(&block); end
  def extract_endpoint_from(url = nil); end
  def extract_paging(response); end
  def get(params = nil); end
  def get_events(params = nil, paging = nil); end
  def initialize(client, domain); end
  def next(params = nil); end
  def previous(params = nil); end
  include Enumerable
end
class Mailgun::Domains
  def add(domain, options = nil); end
  def add_domain(domain, options = nil); end
  def create(domain, options = nil); end
  def delete(domain); end
  def delete_domain(domain); end
  def get(domain); end
  def get_domain(domain); end
  def get_domains(options = nil); end
  def info(domain); end
  def initialize(client = nil); end
  def list(options = nil); end
  def remove(domain); end
  def verify(domain); end
  def verify_domain(domain); end
end
class Mailgun::Webhooks
  def add(domain, action, url = nil); end
  def add_all_webhooks(domain, url = nil); end
  def add_webhook(domain, action, url = nil); end
  def create(domain, action, url = nil); end
  def create_all(domain, url = nil); end
  def delete(domain, action); end
  def delete_all(domain); end
  def delete_all_webooks(domain); end
  def delete_webhook(domain, action); end
  def get_webhook_url(domain, action); end
  def get_webhooks(domain, options = nil); end
  def info(domain, action); end
  def initialize(client = nil); end
  def list(domain, options = nil); end
  def remove(domain, action); end
  def remove_all(domain); end
end
module Railgun
  def build_message_object(mail); end
  def extract_body_html(mail); end
  def extract_body_text(mail); end
  def retrieve_html_part(mail); end
  def retrieve_text_part(mail); end
  def self.build_message_object(mail); end
  def self.extract_body_html(mail); end
  def self.extract_body_text(mail); end
  def self.retrieve_html_part(mail); end
  def self.retrieve_text_part(mail); end
  def self.transform_for_mailgun(mail); end
  def transform_for_mailgun(mail); end
end
class Railgun::Error < StandardError
  def initialize(message = nil, object = nil); end
  def object; end
end
class Railgun::ConfigurationError < Railgun::Error
end
class Railgun::InternalError < Railgun::Error
  def initialize(source_exc, message = nil, object = nil); end
  def source_exception; end
end
class Railgun::Mailer
  def config; end
  def config=(arg0); end
  def deliver!(mail); end
  def domain; end
  def domain=(arg0); end
  def initialize(config); end
  def mailgun_client; end
  def settings; end
  def settings=(arg0); end
end
class Railgun::Railtie < Rails::Railtie
end
class Railgun::Attachment < StringIO
  def attach_to_message!(mb); end
  def content_type; end
  def filename; end
  def initialize(attachment, *args); end
  def inline?; end
  def is_original_filename; end
  def original_filename; end
  def overwritten_filename; end
  def path; end
  def source_filename; end
end
module Mail
end
class Mail::Message
  def mailgun_headers; end
  def mailgun_headers=(arg0); end
  def mailgun_options; end
  def mailgun_options=(arg0); end
  def mailgun_recipient_variables; end
  def mailgun_recipient_variables=(arg0); end
  def mailgun_variables; end
  def mailgun_variables=(arg0); end
end