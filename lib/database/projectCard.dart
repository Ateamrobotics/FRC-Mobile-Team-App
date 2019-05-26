

class ProjectCard{
  var projectName = "";
  var percentComplete = 0.0;
  var detail = "";
  ProjectCard(this.projectName,this.percentComplete,this.detail);


  toJson() {
    return {
      "name": projectName,
      "value": percentComplete
    };
  }
}