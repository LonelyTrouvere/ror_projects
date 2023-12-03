require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    check "Dormitory" if @student.dormitory
    fill_in "Experiance", with: @student.experiance
    fill_in "Faculty", with: @student.faculty
    check "Isteacher" if @student.isTeacher
    fill_in "Language", with: @student.language
    fill_in "Name", with: @student.name
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    check "Dormitory" if @student.dormitory
    fill_in "Experiance", with: @student.experiance
    fill_in "Faculty", with: @student.faculty
    check "Isteacher" if @student.isTeacher
    fill_in "Language", with: @student.language
    fill_in "Name", with: @student.name
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
