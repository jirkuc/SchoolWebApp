using System.Diagnostics.CodeAnalysis;

namespace SchoolWebApp.Models;
public class Grade {
    [NotNull]
    public int Id { get; set; }
    [NotNull]
    public Student? Student { get; set; }
    [NotNull]
    public Subject? Subject { get; set; }
    [NotNull]
    public string? Topic { get; set; }
    [NotNull]
    public DateTime Date { get; set; }
    [NotNull]
    public int Mark { get; set; }
}

