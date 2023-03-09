Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

$employee_list = Import-Csv C:\Path\To\list.csv

foreach ($employee in $employee_list) {
    gam user $employee.Email add forwardingaddress example@gmail.com 
    
    gam user $employee.Email add filter from "-(@dropbox.com OR @mailing.archibald.pl OR @ifeelonline.com OR @automation.atlassian.com OR @shl.com OR @elucidat.com OR @demodesk.com OR @docs.google.com OR @pekao.com.pl OR @gowork.pl OR @saplingapp.io OR @em-s.dropbox.com OR @makeup.pl OR @pointnine.com)" forward example@gmail.com 
    
}
Read-Host -Prompt "Press any key to continue"