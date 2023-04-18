<?php\
echo 'Welcome';
?>
<html>
    <head>
        <script type="module">
            //
            //To resolve reference to the show_contribnutions function
            import {show_contributions} from "./view_contribution.js";
            
            show_contributions();
        </script>
    </head>
    
    <body>
        <table>
            <thead id="header">
                
            </thead>
            
            <tbody id="body">
                
            </tbody>
            
            
        </table>
    </body>
</html