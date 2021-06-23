# frozen_string_literal: true

require 'application_system_test_case'

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test 'visiting the index' do
    visit teachers_url
    assert_selector 'h1', text: 'Teachers'
  end

  test 'creating a Teacher' do
    visit teachers_url
    click_on 'New Teacher'

    fill_in 'City', with: @teacher.city
    fill_in 'Contact', with: @teacher.contact
    fill_in 'Date of birth', with: @teacher.date_of_birth
    fill_in 'Email', with: @teacher.email
    fill_in 'Experience', with: @teacher.experience
    fill_in 'Gender', with: @teacher.gender
    fill_in 'Qualification', with: @teacher.qualification
    fill_in 'State', with: @teacher.state
    fill_in 'Teacher', with: @teacher.teacher_id
    fill_in 'Teacher name', with: @teacher.teacher_name
    click_on 'Create Teacher'

    assert_text 'Teacher was successfully created'
    click_on 'Back'
  end

  test 'updating a Teacher' do
    visit teachers_url
    click_on 'Edit', match: :first

    fill_in 'City', with: @teacher.city
    fill_in 'Contact', with: @teacher.contact
    fill_in 'Date of birth', with: @teacher.date_of_birth
    fill_in 'Email', with: @teacher.email
    fill_in 'Experience', with: @teacher.experience
    fill_in 'Gender', with: @teacher.gender
    fill_in 'Qualification', with: @teacher.qualification
    fill_in 'State', with: @teacher.state
    fill_in 'Teacher', with: @teacher.teacher_id
    fill_in 'Teacher name', with: @teacher.teacher_name
    click_on 'Update Teacher'

    assert_text 'Teacher was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Teacher' do
    visit teachers_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Teacher was successfully destroyed'
  end
end
