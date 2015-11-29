main;str;xml;win;txtFahrenheit;txtCentigrade;mnuFahrenheit;mnuCentigrade;btnF2C;btnC2F;btnQuit;scrTemp;sink
 ⍝ ... This is the entry point of the software project NewAplDskApp "New APL Desktop Application"
 ⎕USING←'System'
 ⎕USING,←⊂'System.IO'
 ⎕USING,←⊂'System.Windows.Markup'
 ⎕USING,←⊂'System.Xml,system.xml.dll'
 ⎕USING,←⊂'System.Windows.Controls.Primitives,WPF/PresentationFramework.dll'
 
 ⍝_________________________________
 ⍝ ... Create form instance from XAML
 ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 ⍝strOut 'Starting form...'
 str←⎕NEW StringReader(⊂fm_main)
 xml←⎕NEW XmlTextReader str
 win←XamlReader.Load xml
 
 ⍝_________________________________
 ⍝ ... Assign callbacks on menu items
 ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 ⍝strOut 'Assigning menu...'
 txtFahrenheit←win.FindName⊂'fldTxtFahrenheit'
 txtCentigrade←win.FindName⊂'fldTxtCentigrade'
 mnuFahrenheit←win.FindName⊂'mnuFahrenheit'
 mnuFahrenheit.onClick←'SET_F'
 mnuCentigrade←win.FindName⊂'mnuCentigrade'
 mnuCentigrade.onClick←'SET_C'
 
 ⍝_________________________________
 ⍝ ... Assign callbacks on buttons
 ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 btnF2C←win.FindName⊂'btnF2C'
 btnC2F←win.FindName⊂'btnC2F'
 btnQuit←win.FindName⊂'btnQuit'
 scrTemp←win.FindName⊂'scrTemp'
 
 btnF2C.onClick←'f2c'
 btnC2F.onClick←'c2f'
 btnQuit.onClick←'btnQuit_OnClick'
 scrTemp.onScroll←'scroll_f2c'
 
 ⍝_________________________________
 ⍝ ... Show form 
 ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
sink←win.ShowDialog
⎕OFF