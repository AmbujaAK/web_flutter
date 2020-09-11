class ProjectRepoModel {
  final String htmlUrl;
  final int watchersCount;
  final String language;
  final String description;
  final String name;
  final String owner;

  ProjectRepoModel(this.htmlUrl, this.watchersCount, this.language, this.description,
      this.name, this.owner);

  static List<ProjectRepoModel> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList
        .map((r) => ProjectRepoModel(
          r['html_url'], 
          r['watchers_count'], 
          r['language'],
          r['description'], 
          r['name'], 
          r['owner']['login']))
        .toList();
  }
}