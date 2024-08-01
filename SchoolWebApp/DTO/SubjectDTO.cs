using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace SchoolWebApp.DTO; 
public class SubjectDTO {
    public int Id { get; set; }
    [NotNull]
    [MinLength(4, ErrorMessage ="The subject name must consist of at least 4 characters.")]
    [MaxLength(25)]
    [DisplayName("Subject Name:")]
    public string? Name { get; set; }
}
