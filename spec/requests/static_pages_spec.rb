# encoding: utf-8
require 'rails_helper'

RSpec.describe "Index page", type: :request do

    it "should have the welcome content" do
      visit "/static_pages/index"
      expect(page).to have_selector("body", :text => "Здравствуй, Гость!")
    end

   it "should have the title 'Приветствие'" do
      visit "/static_pages/index"
      expect(page).to have_title("Пробуй и считай | Приветствие")
   end
end

RSpec.describe "Begins page", type: :request do

   it "should have the begin content" do
      visit "/static_pages/begins"
      expect(page).to have_selector("body", :text =>"Итак, начнем!")
    end

    it "should have the title 'Начало'" do
      visit "/static_pages/begins"
      expect(page).to have_title("Пробуй и считай | Начало")
    end
end
