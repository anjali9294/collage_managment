# frozen_string_literal: true

require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test 'should get index' do
    get teachers_url
    assert_response :success
  end

  test 'should get new' do
    get new_teacher_url
    assert_response :success
  end

  test 'should create teacher' do
    assert_difference('Teacher.count') do
      post teachers_url,
           params: { teacher: { city: @teacher.city, contact: @teacher.contact, date_of_birth: @teacher.date_of_birth,
                                email: @teacher.email, experience: @teacher.experience, gender: @teacher.gender, qualification: @teacher.qualification, state: @teacher.state, teacher_id: @teacher.teacher_id, teacher_name: @teacher.teacher_name } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test 'should show teacher' do
    get teacher_url(@teacher)
    assert_response :success
  end

  test 'should get edit' do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test 'should update teacher' do
    patch teacher_url(@teacher),
          params: { teacher: { city: @teacher.city, contact: @teacher.contact, date_of_birth: @teacher.date_of_birth,
                               email: @teacher.email, experience: @teacher.experience, gender: @teacher.gender, qualification: @teacher.qualification, state: @teacher.state, teacher_id: @teacher.teacher_id, teacher_name: @teacher.teacher_name } }
    assert_redirected_to teacher_url(@teacher)
  end

  test 'should destroy teacher' do
    assert_difference('Teacher.count', -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
