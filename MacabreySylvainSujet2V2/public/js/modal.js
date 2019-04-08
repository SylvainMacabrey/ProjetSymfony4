//modal suppression activite
$('#deleteActiviteModal').on('show.bs.modal', function(e) {
    let id = $(e.relatedTarget).data('activite-id');
    $(e.currentTarget).find('input[name="idActivite"]').val(id);
    let nom = $(e.relatedTarget).data('activite-nom');
    $("#nom").html("Voulez vous vraiment supprimer l'activité <em>" + nom + "</em> ?");
});