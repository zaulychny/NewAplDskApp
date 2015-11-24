f2c;value
 ⍝ Callback to convert Fahrenheit to Centigrade
 :If 1=⍴,value←Text2Num txtFahrenheit.Text
     txtCentigrade.Text←2⍕(value-32)×5÷9
 :Else
     txtCentigrade.Text←'invalid'
 :EndIf
