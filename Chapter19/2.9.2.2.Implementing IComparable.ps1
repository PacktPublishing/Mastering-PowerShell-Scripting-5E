class MyClass : IComparable {
    [int] $Number

    [int] CompareTo(
        [object] $object
    ) {
        return $this.Number.CompareTo($object.Number)
    }
}
