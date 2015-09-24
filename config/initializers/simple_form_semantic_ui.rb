SimpleForm.setup do |config|
  config.error_notification_class = 'ui error message'
  config.button_class = 'ui blue submit button'
  config.boolean_label_class = nil
  config.form_class = 'ui form'

  config.wrappers :horizontal_form, tag: 'div', class: 'field', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label
    b.use :input
    b.use :error, wrap_with: { tag: 'div', class: 'ui pointing red basic label' }
    b.use :hint,  wrap_with: { tag: 'div', class: 'ui pointing label' }
  end
  
  config.wrappers :horizontal_boolean, tag: 'div', class: 'field', error_class: 'error' do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: 'div', class: 'ui checkbox' do |wr|
      # wr.use :input
      wr.use :label_text
      wr.use :input
    end

    b.use :error, wrap_with: { tag: 'div', class: 'ui pointing red basic label' }
    b.use :hint,  wrap_with: { tag: 'div', class: 'ui pointing label' }
  end
  
  config.wrappers :inline_checkbox, :tag => 'div', :class => 'field', :error_class => 'error' do |b|
    b.use :html5

    b.wrapper :tag => 'label', :class => 'checkbox' do |bb|
      bb.use :input
      bb.use :label_text
    end
    b.use :error, wrap_with: { tag: 'div', class: 'ui pointing red basic label' }
    b.use :hint,  wrap_with: { tag: 'div', class: 'ui pointing label' }
  end

  config.default_wrapper = :horizontal_form
end