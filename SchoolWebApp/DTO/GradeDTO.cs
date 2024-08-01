using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SchoolWebApp.DTO;
public class GradeDTO {
    public int Id { get; set; }
    [DisplayName("Student:")]
    public int StudentId { get; set; }
    [DisplayName("Subject:")]
    public int SubjectId { get; set; }
    [DisplayName("Topic:")]
    public string Topic { get; set; }
    public DateTime Date { get; set; }
    [DisplayName("Grade Awarded:")]
    public int Mark { get; set; }
}
