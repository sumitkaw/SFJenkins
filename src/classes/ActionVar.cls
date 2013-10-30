public class ActionVar
{
    public list<SelectOption> accountList{get;set;}
    public account lAcccount {get;set;}
    public Id AccountId {get;set;}
    public Boolean showDetail {get;set;}
    
    
    public ActionVar()
    {
        lAcccount = new Account();
        accountList = new list<SelectOption>();
        List<Account> accounts = [Select Id,Name from Account limit 50];
        for(Account lAccount : accounts)
        {
            SelectOption lOption = new SelectOption(lAccount.Id,lAccount.Name);
            accountList.add(lOption);
        }
    }
    
    public PageReference getDetails()
    {
       System.debug('AccountId -->>'+AccountId );
       lAcccount  = [Select Name,AccountNumber,Industry,Website,Active__c from Account where Id = :AccountId ];
       showDetail = true;
       return null;
    }
}