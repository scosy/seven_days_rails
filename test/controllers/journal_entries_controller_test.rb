require "test_helper"

class JournalEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_entry = journal_entries(:one)
  end

  test "should get index" do
    get journal_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_journal_entry_url
    assert_response :success
  end

  test "should create journal_entry" do
    assert_difference("JournalEntry.count") do
      post journal_entries_url, params: { journal_entry: { field_1: @journal_entry.field_1, field_2: @journal_entry.field_2, field_3: @journal_entry.field_3, field_4: @journal_entry.field_4, field_5: @journal_entry.field_5, field_6: @journal_entry.field_6 } }
    end

    assert_redirected_to journal_entry_url(JournalEntry.last)
  end

  test "should show journal_entry" do
    get journal_entry_url(@journal_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_journal_entry_url(@journal_entry)
    assert_response :success
  end

  test "should update journal_entry" do
    patch journal_entry_url(@journal_entry), params: { journal_entry: { field_1: @journal_entry.field_1, field_2: @journal_entry.field_2, field_3: @journal_entry.field_3, field_4: @journal_entry.field_4, field_5: @journal_entry.field_5, field_6: @journal_entry.field_6 } }
    assert_redirected_to journal_entry_url(@journal_entry)
  end

  test "should destroy journal_entry" do
    assert_difference("JournalEntry.count", -1) do
      delete journal_entry_url(@journal_entry)
    end

    assert_redirected_to journal_entries_url
  end
end
