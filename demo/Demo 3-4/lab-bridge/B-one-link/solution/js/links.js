function buildOneLink() {
    // Supplied sample values for local practice.
    const owner = "nakarapunchai";
    const repository = "cis181-course-template";
    const placeholder = document.getElementById("repo-link");
    const link = document.createElement("a");
    link.href = "https://github.com/" + owner + "/" + repository + "/tree/main/lab1-4/";
    link.textContent = "View lab1-4";
    placeholder.replaceWith(link);
}
buildOneLink();
