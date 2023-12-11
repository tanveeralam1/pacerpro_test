require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'soft deletes an item' do
    item = Item.create(name: 'Sample Item')
    item.soft_delete
    assert_not_nil item.deleted_at
  end

  test 'restores a soft-deleted item' do
    item = Item.create(name: 'Sample Item')
    item.soft_delete
    item.restore
    assert_nil item.deleted_at
  end

  test 'excludes soft-deleted items from normal queries' do
    Item.create(name: 'Item 1')
    Item.create(name: 'Item 2').soft_delete
    items = Item.all
    assert_equal 1, items.length
  end
end
