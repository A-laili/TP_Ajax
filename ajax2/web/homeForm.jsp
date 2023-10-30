<%@page import="java.util.Date"%>
<%@page import="ma.school.beans.Etudiant"%>
<%@page import="ma.school.service.EtudiantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home Page</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="style/css.css" rel="stylesheet" type="text/css"/>
    <link href="style/csslocal.css" rel="stylesheet" type="text/css"/>
    <script src="script/script.js" type="text/javascript"></script>
    <script src="script/jsonExemple.js" type="text/javascript">
    </script>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    
    <div style="max-width: 40%; margin: 0 auto;">
        <canvas id="myChart" width="400" height="200"></canvas>
    </div>
    <a href="style/chartCss.css"></a>
    
    <script>
        // Chart data
        var labels = ['HP', 'Dell', 'Lenovo'];
        var data = [2, 1, 2];

        // Chart configuration
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Laptop Brands',
                    data: data,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
