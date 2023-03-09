Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

# Imports .csv list
$employee_list = Import-Csv C:\Users\Bartek\Desktop\list.csv

# Iterates over employees list, assigns Gmail filters to variable and checks if any of those contains given email 
foreach ($employee in $employee_list) {
    $emailFilters = gam user $employee.Email print filters 2> $null 
    
    if ($emailFilters -match "example@gmail.com"){
	  
        Write-Host $employee.Email `n $emailFilters `n`n 
    }
}
Read-Host -Prompt "Press any key to continue"