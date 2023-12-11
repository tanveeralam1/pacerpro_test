class Item < ApplicationRecord
    # Attributes: name (string), deleted_at (datetime)
  
    # Soft Delete Implementation
    def soft_delete
      update(deleted_at: Time.current)
    end
  
    def restore
      update(deleted_at: nil)
    end
  
    # Default Scope to Exclude "Deleted" Items
    default_scope -> { where(deleted_at: nil) }
  end
  
  