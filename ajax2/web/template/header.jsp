<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header" style="height:40px; width:100%; background-color: bisque; padding: 10px; border-bottom: 2px solid #ff9900;">
    <img id="logo" src="images/Logo_Ensaj.png" alt="logo" style="width:100px;height:40px;"/> 
    <fieldset>
    <span id="horloge" style="font-family:fantasy;animation: cubic-bezier;color: brown; outline-color: #ff9900;text-align: center; width:100%;"></span>
    </fieldset>
    
</div>
<script src="script/horloge.js" type="text/javascript"></script>


 <script>
    function showConfirmation(etudiantId) {
        var result = confirm("Êtes-vous sûr de vouloir supprimer cette machine ?");
        if (result) {
            // L'utilisateur a cliqué sur "OK", redirigez vers la servlet pour effectuer la suppression.
            window.location.href = "MachineController?op=supprimer&id=" + etudiantId;
        } else {
            // L'utilisateur a cliqué sur "Annuler", ne rien faire.
        }
    }
</script>

<script>
    function showConfirmation2(machineId) {
        var result = confirm("Êtes-vous sûr de vouloir modifier cette machine ?");
        if (result) {
            // L'utilisateur a cliqué sur "OK", redirigez vers la servlet pour effectuer la suppression.
            window.location.href = "MachineController?op=update&id=" + machineId;
        } else {
            // L'utilisateur a cliqué sur "Annuler", ne rien faire.
        }
    }
</script>

