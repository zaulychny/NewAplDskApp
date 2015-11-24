scroll_f2c Msg;C;F;val
⍝ Callback for Fahrenheit input via scrollbar
 txtFahrenheit.Text←2⍕val←213-(2⊃Msg).NewValue
 txtCentigrade.Text←2⍕(val-32)×5÷9
