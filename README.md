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

# When to use

- Hierarchical relationships: You need to model a hierarchical relationship between objects of the same class, such as a tree-like structure (e.g., a family tree where a person can have parents, children, and grandchildren).

- Recursive relationships: You need to model a recursive relationship where an object can have multiple parents or children of the same class (e.g., a person can have multiple parents, children, and grandchildren).

- Dynamic relationships: You need to model relationships that can change dynamically, such as a family tree where a person's relationships to their parents, children, and grandchildren can change over time (e.g., a person can get married and have children, or a person's parents can pass away).

# Files

- models/person
- db/seeds
