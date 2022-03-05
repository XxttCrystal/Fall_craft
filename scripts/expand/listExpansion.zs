import stdlib.List;

public expand <T> List<T> {
    public copy() as List<T> {
        var newList = new List<T>();

        for element in this {
            newList.add(element);
        }

        return newList;
    }
}