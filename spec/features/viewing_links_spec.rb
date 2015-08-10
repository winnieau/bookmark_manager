require 'spec_helper'
require_relative '../../app/models/link'


feature 'Viewing_links' do
	scenario 'I can see existing links on the links page' do
		p Link.new.attributes
		Link.new(url: 'http://www.makersacademy.com', title: 'Makers Academy')
		visit '/links'
		expect(page.status_code).to eq 200
		within 'ul#links' do
			expect(page).to have_content 'Makers Academy'
		end
	end
	
end