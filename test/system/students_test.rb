# frozen_string_literal: true

require 'application_system_test_case'

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test 'visiting the index' do
    visit students_url
    assert_selector 'h1', text: 'Students'
  end

  test 'creating a Student' do
    visit students_url
    click_on 'New Student'

    fill_in 'City', with: @student.city
    fill_in 'Contact', with: @student.contact
    fill_in 'Course', with: @student.course_id
    fill_in 'Date of birth', with: @student.date_of_birth
    fill_in 'Email', with: @student.email
    fill_in 'Father name', with: @student.father_name
    fill_in 'Father occupation', with: @student.father_occupation
    fill_in 'Gender', with: @student.gender
    fill_in 'Mother name', with: @student.mother_name
    fill_in 'Mother occupation', with: @student.mother_occupation
    fill_in 'Name', with: @student.name
    fill_in 'Roll no', with: @student.roll_no
    fill_in 'State', with: @student.state
    click_on 'Create Student'

    assert_text 'Student was successfully created'
    click_on 'Back'
  end

  test 'updating a Student' do
    visit students_url
    click_on 'Edit', match: :first

    fill_in 'City', with: @student.city
    fill_in 'Contact', with: @student.contact
    fill_in 'Course', with: @student.course_id
    fill_in 'Date of birth', with: @student.date_of_birth
    fill_in 'Email', with: @student.email
    fill_in 'Father name', with: @student.father_name
    fill_in 'Father occupation', with: @student.father_occupation
    fill_in 'Gender', with: @student.gender
    fill_in 'Mother name', with: @student.mother_name
    fill_in 'Mother occupation', with: @student.mother_occupation
    fill_in 'Name', with: @student.name
    fill_in 'Roll no', with: @student.roll_no
    fill_in 'State', with: @student.state
    click_on 'Update Student'

    assert_text 'Student was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Student' do
    visit students_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Student was successfully destroyed'
  end
end
