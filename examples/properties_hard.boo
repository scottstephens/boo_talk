class PropertyExample2:
    _field as int
    Prop as int:
        get:
            return _field
        set:
            _field = value

print "nothing to see here"
