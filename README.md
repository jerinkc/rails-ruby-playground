
Another way to get records where models associated with has-many-through.

# Reference

[https://coderwall.com/p/9xk6ra/rails-filter-using-join-model-on-has_many-through](https://coderwall.com/p/9xk6ra/rails-filter-using-join-model-on-has_many-through)

# Content

In a Course - Enrollment - Student model, we can get all students who have passed(grade > 70) using the AR query:

```
  course = Course.first
  course.students.merge(Enrollment.passed)
```

The `merge` will perform intersect operation between `course.students` and `Enrollment.passed`.

# Additional Info

- Seed file available for records creation
