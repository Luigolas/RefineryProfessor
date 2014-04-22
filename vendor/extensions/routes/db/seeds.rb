Refinery::I18n.frontend_locales.each do |lang|
  I18n.locale = lang

  if defined?(Refinery::User)
    Refinery::User.all.each do |user|
      if user.plugins.where(:name => 'refinerycms-routes').blank?
        user.plugins.create(:name => 'refinerycms-routes',
                            :position => (user.plugins.maximum(:position) || -1) +1)
      end
    end
  end

  url = '/routes'
  if defined?(Refinery::Page) && Refinery::Page.where(:link_url => url).empty?
    page = Refinery::Page.create(
      :title => 'Hiking',
      :link_url => url,
      :deletable => false,
      :menu_match => "^#{url}(\/|\/.+?|)$"
    )
    #Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
    #  page.parts.create(:title => default_page_part, :body => nil, :position => index)
    #end

    #Only make available Introduction. You can uncomment previous part to make default parts available
    page.parts.create(:title => 'Introduction', :position => 0) unless page.parts.exists?(:title => 'Introduction')
  end
end
