c2f;value
⍝ Callback to convert Centigrade to Fahrenheit
 :If 1=⍴,value←Text2Num txtCentigrade.Text
     txtFahrenheit.Text←2⍕32+value÷5÷9
 :Else
     txtFahrenheit.Text←'invalid'
 :EndIf
