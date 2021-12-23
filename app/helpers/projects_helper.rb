module ProjectsHelper
  def project_deadline(project)
    project.deadline ? project.deadline.strftime("Deadline is: %B %d, %Y") : "Set deadline"
  end
end
