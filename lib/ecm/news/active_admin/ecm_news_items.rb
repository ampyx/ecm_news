include ActsAsPublished::ActiveAdminHelper

::ActiveAdmin.register Ecm::News::Item do
  controller.skip_authorization_check

  # acts as published
  acts_as_published_actions

  # menu entry settings
  menu :parent => 'News'

  # scopes
  scope :all
  scope :published
  scope :unpublished

  form do |f|
    f.inputs do
      f.input :title
      f.input :locale, :as => :select, :collection => I18n.available_locales.map(&:to_s)
      f.input :body
      f.input :published, :as => :boolean
    end

    f.inputs do
      f.input :markup_language, :as => :select, :collection => Ecm::News::Configuration.markup_languages.map(&:to_s)
    end

    f.actions
  end

  index do
    selectable_column
    column :title
    column :locale
    column :body do |item|
      truncate(mu(item, :body), :length => 250, :separator => ' ').html_safe
    end
    acts_as_published_columns
    column :created_at
    column :updated_at
    default_actions
  end

  show :title => :to_s do
    attributes_table do
      row :title
      row :locale
      row :published_at
      row :link_to_more
      row :markup_language
      row :created_at
      row :updated_at
    end

    panel Ecm::News::Item.human_attribute_name(:body) do
      div do
        mu(ecm_news_item, :body)
      end
    end
  end
end if defined?(::ActiveAdmin)

