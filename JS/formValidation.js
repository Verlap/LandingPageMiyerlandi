// Script empty function here
function empty(data) {
  if (typeof data == "number" || typeof data == "boolean") {
    return false;
  }
  if (typeof data == "undefined" || data === null) {
    return true;
  }
  if (typeof data.length != "undefined") {
    return data.length == 0;
  }
  var count = 0;
  for (var i in data) {
    if (data.hasOwnProperty(i)) {
      count++;
    }
  }
  return count == 0;
}

$(document).ready(function () {
  $("#volunteerRegistry").submit(function (event) {
    event.preventDefault();
    if (
      empty($("#nameInput").val()) ||
      empty($("#lastNameInput").val()) ||
      empty($("#occupationInput").val()) ||
      empty($("#addressInput").val()) ||
      empty($("#emailInput").val()) ||
      empty($("#neightborhoodInput").val()) ||
      empty($("#phoneInput").val()) ||
      empty($("#commentInput").val())
    ) {
      Swal.fire({
        icon: "error",
        title: "Datos incompletos",
        text: "Por favor, asegurate de haber llenado todos los campos obligatorios.",
        timer: 3000,
      });
    } else {
      Swal.fire({
        icon: "success",
        title: "Genial!",
        text: "Tus datos se han enviado con éxito.",
        showConfirmButton: false,
        timer: 3000,
      });
      function reload() {
        location.reload();
      }
      setTimeout(reload, 2000);
    }
  });
});
