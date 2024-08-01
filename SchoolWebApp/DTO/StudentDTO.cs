using System.ComponentModel;

namespace SchoolWebApp.DTO; 
public class StudentDTO {
    public int Id { get; set; }
    [DisplayName("First Name:")]
    public string? FirstName { get; set; }
    [DisplayName("Last Name:")]
    public string? LastName { get; set; }
    [DisplayName("Date of Birth:")]
    public DateTime DateOfBirth { get; set; }
}
