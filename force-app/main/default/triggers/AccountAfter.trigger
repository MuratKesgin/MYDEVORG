trigger AccountAfter on account (after insert) {
    list<contact> conList = new list<contact>();

    for(account acc : trigger.new){
        contact con = new contact();
        con.AccountId = acc.id;
        con.LastName = acc.name;
        con.phone = acc.phone;
        conList.add(con);
    }
    insert conList;
}