=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SibApiV3Sdk
  class SMTPApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an smtp template
    # 
    # @param smtp_template values to update in smtp template
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_smtp_template(smtp_template, opts = {})
      data, _status_code, _headers = create_smtp_template_with_http_info(smtp_template, opts)
      return data
    end

    # Create an smtp template
    # 
    # @param smtp_template values to update in smtp template
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_smtp_template_with_http_info(smtp_template, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.create_smtp_template ..."
      end
      # verify the required parameter 'smtp_template' is set
      if @api_client.config.client_side_validation && smtp_template.nil?
        fail ArgumentError, "Missing the required parameter 'smtp_template' when calling SMTPApi.create_smtp_template"
      end
      # resource path
      local_var_path = "/smtp/templates"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(smtp_template)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#create_smtp_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete hardbounces
    # Delete hardbounces. To use carefully (e.g. in case of temporary ISP failures)
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteHardbounces] :delete_hardbounces values to delete hardbounces
    # @return [nil]
    def delete_hardbounces(opts = {})
      delete_hardbounces_with_http_info(opts)
      return nil
    end

    # Delete hardbounces
    # Delete hardbounces. To use carefully (e.g. in case of temporary ISP failures)
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteHardbounces] :delete_hardbounces values to delete hardbounces
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_hardbounces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.delete_hardbounces ..."
      end
      # resource path
      local_var_path = "/smtp/deleteHardbounces"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'delete_hardbounces'])
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#delete_hardbounces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get your SMTP activity aggregated over a period of time
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Tag of the emails
    # @return [GetAggregatedReport]
    def get_aggregated_smtp_report(opts = {})
      data, _status_code, _headers = get_aggregated_smtp_report_with_http_info(opts)
      return data
    end

    # Get your SMTP activity aggregated over a period of time
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Tag of the emails
    # @return [Array<(GetAggregatedReport, Fixnum, Hash)>] GetAggregatedReport data, response status code and response headers
    def get_aggregated_smtp_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.get_aggregated_smtp_report ..."
      end
      # resource path
      local_var_path = "/smtp/statistics/aggregatedReport"

      # query parameters
      query_params = {}
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAggregatedReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#get_aggregated_smtp_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all your SMTP activity (unaggregated events)
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned (default to 50)
    # @option opts [Integer] :offset Beginning point in the list to retrieve from. (default to 0)
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :email Filter the report for a specific email addresses
    # @option opts [String] :event Filter the report for a specific event type
    # @option opts [String] :tags Filter the report for tags (serialized and urlencoded array)
    # @option opts [String] :message_id Filter on a specific message id
    # @option opts [Integer] :template_id Filter on a specific template id
    # @return [GetEmailEventReport]
    def get_email_event_report(opts = {})
      data, _status_code, _headers = get_email_event_report_with_http_info(opts)
      return data
    end

    # Get all your SMTP activity (unaggregated events)
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned
    # @option opts [Integer] :offset Beginning point in the list to retrieve from.
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :email Filter the report for a specific email addresses
    # @option opts [String] :event Filter the report for a specific event type
    # @option opts [String] :tags Filter the report for tags (serialized and urlencoded array)
    # @option opts [String] :message_id Filter on a specific message id
    # @option opts [Integer] :template_id Filter on a specific template id
    # @return [Array<(GetEmailEventReport, Fixnum, Hash)>] GetEmailEventReport data, response status code and response headers
    def get_email_event_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.get_email_event_report ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SMTPApi.get_email_event_report, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && opts[:'event'] && !['bounces', 'hardBounces', 'softBounces', 'delivered', 'spam', 'requests', 'opened', 'clicks', 'invalid', 'deferred', 'blocked'].include?(opts[:'event'])
        fail ArgumentError, 'invalid value for "event", must be one of bounces, hardBounces, softBounces, delivered, spam, requests, opened, clicks, invalid, deferred, blocked'
      end
      # resource path
      local_var_path = "/smtp/statistics/events"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'event'] = opts[:'event'] if !opts[:'event'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'messageId'] = opts[:'message_id'] if !opts[:'message_id'].nil?
      query_params[:'templateId'] = opts[:'template_id'] if !opts[:'template_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetEmailEventReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#get_email_event_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get your SMTP activity aggregated per day
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents returned per page (default to 50)
    # @option opts [Integer] :offset Index of the first document on the page (default to 0)
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD)
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD)
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Tag of the emails
    # @return [GetReports]
    def get_smtp_report(opts = {})
      data, _status_code, _headers = get_smtp_report_with_http_info(opts)
      return data
    end

    # Get your SMTP activity aggregated per day
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents returned per page
    # @option opts [Integer] :offset Index of the first document on the page
    # @option opts [Date] :start_date Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD)
    # @option opts [Date] :end_date Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD)
    # @option opts [Integer] :days Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39;
    # @option opts [String] :tag Tag of the emails
    # @return [Array<(GetReports, Fixnum, Hash)>] GetReports data, response status code and response headers
    def get_smtp_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.get_smtp_report ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SMTPApi.get_smtp_report, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = "/smtp/statistics/reports"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetReports')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#get_smtp_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the template informations
    # 
    # @param template_id id of the template
    # @param [Hash] opts the optional parameters
    # @return [GetSmtpTemplateOverview]
    def get_smtp_template(template_id, opts = {})
      data, _status_code, _headers = get_smtp_template_with_http_info(template_id, opts)
      return data
    end

    # Returns the template informations
    # 
    # @param template_id id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSmtpTemplateOverview, Fixnum, Hash)>] GetSmtpTemplateOverview data, response status code and response headers
    def get_smtp_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.get_smtp_template ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling SMTPApi.get_smtp_template"
      end
      # resource path
      local_var_path = "/smtp/templates/{templateId}".sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSmtpTemplateOverview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#get_smtp_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of SMTP templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :template_status Filter on the status of the template. Active &#x3D; true, inactive &#x3D; false
    # @option opts [Integer] :limit Number of documents returned per page (default to 50)
    # @option opts [Integer] :offset Index of the first document in the page (default to 0)
    # @return [GetSmtpTemplates]
    def get_smtp_templates(opts = {})
      data, _status_code, _headers = get_smtp_templates_with_http_info(opts)
      return data
    end

    # Get the list of SMTP templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :template_status Filter on the status of the template. Active &#x3D; true, inactive &#x3D; false
    # @option opts [Integer] :limit Number of documents returned per page
    # @option opts [Integer] :offset Index of the first document in the page
    # @return [Array<(GetSmtpTemplates, Fixnum, Hash)>] GetSmtpTemplates data, response status code and response headers
    def get_smtp_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.get_smtp_templates ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SMTPApi.get_smtp_templates, must be smaller than or equal to 1000.'
      end

      # resource path
      local_var_path = "/smtp/templates"

      # query parameters
      query_params = {}
      query_params[:'templateStatus'] = opts[:'template_status'] if !opts[:'template_status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSmtpTemplates')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#get_smtp_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a template
    # 
    # @param template_id Id of the template
    # @param send_email 
    # @param [Hash] opts the optional parameters
    # @return [SendTemplateEmail]
    def send_template(template_id, send_email, opts = {})
      data, _status_code, _headers = send_template_with_http_info(template_id, send_email, opts)
      return data
    end

    # Send a template
    # 
    # @param template_id Id of the template
    # @param send_email 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendTemplateEmail, Fixnum, Hash)>] SendTemplateEmail data, response status code and response headers
    def send_template_with_http_info(template_id, send_email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.send_template ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling SMTPApi.send_template"
      end
      # verify the required parameter 'send_email' is set
      if @api_client.config.client_side_validation && send_email.nil?
        fail ArgumentError, "Missing the required parameter 'send_email' when calling SMTPApi.send_template"
      end
      # resource path
      local_var_path = "/smtp/templates/{templateId}/send".sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(send_email)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SendTemplateEmail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#send_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a template to your test list
    # 
    # @param template_id Id of the template
    # @param send_test_email 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_test_template(template_id, send_test_email, opts = {})
      send_test_template_with_http_info(template_id, send_test_email, opts)
      return nil
    end

    # Send a template to your test list
    # 
    # @param template_id Id of the template
    # @param send_test_email 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_test_template_with_http_info(template_id, send_test_email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.send_test_template ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling SMTPApi.send_test_template"
      end
      # verify the required parameter 'send_test_email' is set
      if @api_client.config.client_side_validation && send_test_email.nil?
        fail ArgumentError, "Missing the required parameter 'send_test_email' when calling SMTPApi.send_test_template"
      end
      # resource path
      local_var_path = "/smtp/templates/{templateId}/sendTest".sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(send_test_email)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#send_test_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a transactional email
    # 
    # @param send_smtp_email Values to send a transactional email
    # @param [Hash] opts the optional parameters
    # @return [CreateSmtpEmail]
    def send_transac_email(send_smtp_email, opts = {})
      data, _status_code, _headers = send_transac_email_with_http_info(send_smtp_email, opts)
      return data
    end

    # Send a transactional email
    # 
    # @param send_smtp_email Values to send a transactional email
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSmtpEmail, Fixnum, Hash)>] CreateSmtpEmail data, response status code and response headers
    def send_transac_email_with_http_info(send_smtp_email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.send_transac_email ..."
      end
      # verify the required parameter 'send_smtp_email' is set
      if @api_client.config.client_side_validation && send_smtp_email.nil?
        fail ArgumentError, "Missing the required parameter 'send_smtp_email' when calling SMTPApi.send_transac_email"
      end
      # resource path
      local_var_path = "/smtp/email"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(send_smtp_email)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateSmtpEmail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#send_transac_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an smtp templates
    # 
    # @param template_id id of the template
    # @param smtp_template values to update in smtp template
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_smtp_template(template_id, smtp_template, opts = {})
      update_smtp_template_with_http_info(template_id, smtp_template, opts)
      return nil
    end

    # Updates an smtp templates
    # 
    # @param template_id id of the template
    # @param smtp_template values to update in smtp template
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_smtp_template_with_http_info(template_id, smtp_template, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SMTPApi.update_smtp_template ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling SMTPApi.update_smtp_template"
      end
      # verify the required parameter 'smtp_template' is set
      if @api_client.config.client_side_validation && smtp_template.nil?
        fail ArgumentError, "Missing the required parameter 'smtp_template' when calling SMTPApi.update_smtp_template"
      end
      # resource path
      local_var_path = "/smtp/templates/{templateId}".sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(smtp_template)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMTPApi#update_smtp_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
