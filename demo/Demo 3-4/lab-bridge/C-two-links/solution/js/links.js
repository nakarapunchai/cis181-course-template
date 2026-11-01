function buildRepositoryLinks() {
    // Supplied sample values for local practice.
    const owner = "nakarapunchai";
    const repository = "cis181-course-template";
    const placeholders = document.querySelectorAll(".repo-link");
    for (let i = 0; i < placeholders.length; i++) {
        const folder = placeholders[i].getAttribute("data-repo-folder");
        const link = document.createElement("a");
        link.href = "https://github.com/" + owner + "/" + repository + "/tree/main/" + folder + "/";
        link.textContent = "View " + folder;
        placeholders[i].replaceWith(link);
    }
}
buildRepositoryLinks();
