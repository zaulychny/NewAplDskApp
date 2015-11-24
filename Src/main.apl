main;str;xml;win;txtFahrenheit;txtCentigrade;mnuFahrenheit;mnuCentigrade;btnF2C;btnC2F;btnQuit;scrTemp;sink
 
 ⎕USING←'System'
 ⎕USING,←⊂'System.IO'
 ⎕USING,←⊂'System.Windows.Markup'
 ⎕USING,←⊂'System.Xml,system.xml.dll'
 ⎕USING,←⊂'System.Windows.Controls.Primitives,WPF/PresentationFramework.dll'
 
 strOut 'Starting form...'
 str←⎕NEW StringReader(⊂fm_main)
 xml←⎕NEW XmlTextReader str
 win←XamlReader.Load xml
 
 strOut 'Assigning menu...'
 txtFahrenheit←win.FindName⊂'txtFahrenheit'
 txtCentigrade←win.FindName⊂'txtCentigrade'
 mnuFahrenheit←win.FindName⊂'mnuFahrenheit'
 mnuFahrenheit.onClick←'SET_F'
 mnuCentigrade←win.FindName⊂'mnuCentigrade'
 mnuCentigrade.onClick←'SET_C'
 (btnF2C←win.FindName⊂'btnF2C').onClick←'f2c'
 (btnC2F←win.FindName⊂'btnC2F').onClick←'c2f'
 (btnQuit←win.FindName⊂'btnQuit').onClick←'btnQuit_OnClick'
 (scrTemp←win.FindName⊂'scrTemp').onScroll←'scroll_f2c'
 sink←win.ShowDialog