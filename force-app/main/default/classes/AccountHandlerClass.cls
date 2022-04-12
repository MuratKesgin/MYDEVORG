@isTest
private class AccountHandlerClass {
    @isTest
    static void testMe() {
        integer count = [select count() from Account];
        integer size = [select count() from contact];
        Account acc = new account(Name = 'murat', phone = '373728220');

        try {
        } catch (Exception e) {
            System.debug(e);
        }

        Integer newCount = [Select count() from Account];
        Integer newSize = [Select count() from contact];
        Contact c = [select lastname,phone from contact where accountid = :acc.id];
        System.assertEquals(c.lastname, acc.name);
        System.assertEquals(c.phone, acc.Phone);

    }
}
