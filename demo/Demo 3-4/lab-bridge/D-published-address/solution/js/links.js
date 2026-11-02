function buildRepositoryLinks() {
    // Values used to build the repository links.
    const owner = window.location.hostname.replace(".github.io", "");
    const repository = window.location.pathname.split("/")[1];
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
