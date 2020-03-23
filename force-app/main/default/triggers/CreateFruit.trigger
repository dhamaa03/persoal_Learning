trigger CreateFruit on Tower__c (before insert) {
    Map<Integer,String> fruits = new Map<Integer,String>();
    Map<Integer,String> fruitsUpdate = fruits.clone();

    fruits.put(1,'Apple');
    fruits.put(2,'Banana');
    fruits.put(3,'Cherry');
    fruits.put(4,'Grapes');
    fruits.put(5,'Papaya');

    system.debug(fruits.keyset());
    if(fruits.keyset().contains(3)){
        System.debug('in if');
        fruits.put(3,'xyz');
        fruits.putAll(fruitsUpdate);
        System.debug('fruitsUpdate values :'+fruitsUpdate);
    }
    
}