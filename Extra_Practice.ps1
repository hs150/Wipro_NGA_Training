
$name = Read-Host "please enter name"
Write-Output "Helo ,lets welcome $name"


   # $name = "John"
    $age = Read-Host "Enter Your Age"
    "My name is {0} and I am {1} years old" -f $name, $age

     Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 | Select-Object Name, CPU

     $fruits = "banana","apple"
     $fruits[0]
     $fruits+="kiwi"
     $fruits[2]

     #column names are objects in PS

     $age = 20
     if ($age -ge 22) {
     write-Host "Age is greater"
     }

      $age = 25
    if ($age -ge 18) {
        Write-Host "Adult"
    } elseif ($age -ge 13) {
        Write-Host "Teenager"
    } else {
        Write-Host "Child"
    }


