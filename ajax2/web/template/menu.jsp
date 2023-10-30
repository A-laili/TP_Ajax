<%-- 
    Document   : menu
    Created on : 18 oct. 2019, 12:11:54
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<ul>
    

     <li><a class="menu-item" href="homeForm.jsp" >Home</a></li>
        <li><a class="menu-item" href="etudiantForm.jsp">Gestion des étudiants</a></li>
        <li><a class="menu-item" href="marqueForm.jsp">Gestion des marques</a></li>
        <li><a class="menu-item" href="machineForm.jsp">Gestion des machines</a></li>
        <li><a class="menu-item" href="machineByMarqueForm.jsp">Machines par marque</a></li>
        <li><a class="menu-item" href="machineByRef.jsp">Machines par Reference</a></li>
<style>
        /* Your menu styles here */
        .menu-item {
            
            border: 1px solid #ff9900;
            border-radius: 5px;
           
            
        }
         .menu {
           
            position: fixed;
            top: 0;
    left: 0;
            z-index: 1; /* Ensures the menu appears above other content */
        }
        

        
    </style>
     <script>
        // Get the current page URL
        const currentPageURL = window.location.href;

        // Get all menu items
        const menuItems = document.querySelectorAll('.menu-item');

        // Loop through menu items
        menuItems.forEach(item => {
            // Get the href attribute of the menu item
            const itemURL = item.getAttribute('href');

            // Check if the current page URL contains the item's URL
            if (currentPageURL.includes(itemURL)) {
                // If it does, add the "active" class
                item.classList.add('active');
            }
        });
    </script>
   
   
    <animate draggable="false" >

</ul>