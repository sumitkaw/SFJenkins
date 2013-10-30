Public class ListAccount

{
    public List<Account> AccountsList{get;set;}
    
    public ListAccount()
    {
        AccountsList = [Select Id,Name from Account];
    }
}