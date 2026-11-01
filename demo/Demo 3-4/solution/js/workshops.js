function showReminder() {
    const name = document.getElementById("name").value;
    document.getElementById("feedback").textContent = "Hello, " + name + ". Please complete the form.";
}
