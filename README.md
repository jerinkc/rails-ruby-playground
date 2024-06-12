self-referential association - model which has a relationship with itself.

This type of association is commonly used in scenarios like hierarchical structures or parent/children or friendship model.

# content

```
class Person < ApplicationRecord
  belongs_to :parent, class_name: 'Person', optional: true
  has_many :children, class_name: 'Person', foreign_key: 'parent_id'
  has_many :grandchildren, through: :children, source: :children
end
```

The above code will generate a model Person for the following conditions,

- A Person can be a parent, child, or grandchild, depending on their relationships with other persons.
- A person's parent association refers to the person who is their parent.
- A person's children association refers to the persons who are their children.
- A person's grandchildren association refers to the persons who are their grandchildren (i.e., the children of their children).

```
                    John
                     / \
                    /   \
                Mary    David
                /         \
               /           \
            Emily         Jack
```

# Files

- models/person
- db/seeds
