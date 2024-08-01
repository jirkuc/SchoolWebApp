using Microsoft.EntityFrameworkCore;
using SchoolWebApp.DTO;
using SchoolWebApp.Models;

namespace SchoolWebApp.Services;
public class StudentService {
    private ApplicationDbContext _dbContext;

    public StudentService(ApplicationDbContext dbContext) {
        _dbContext = dbContext;
    }
    public IEnumerable<StudentDTO> GetStudents() {
        var allStudents = _dbContext.Students;
        var studentsDtos = new List<StudentDTO>();
        foreach (var student in allStudents) {
            studentsDtos.Add(ModelToDto(student));
        }
        return studentsDtos;
    }
    public async Task AddStudentAsync(StudentDTO studentDTO) {
        await _dbContext.Students.AddAsync(DtoToModel(studentDTO));
        await _dbContext.SaveChangesAsync();
    }

    private async Task<Student> VerifyExistence(int id) {
        var student = await _dbContext.Students.FirstOrDefaultAsync(student => student.Id == id);
        if (student == null) {
            return null;
        }
        return student;
    }

    internal async Task<StudentDTO> GetByIdAsync(int id) {
        //var student = await VerifyExistence(id);
        var student = await _dbContext.Students.FirstOrDefaultAsync(student => student.Id == id);
        if (student == null) {
            return null;
        }
        return ModelToDto(student);
    }
    internal async Task UpdateStudentAsync(StudentDTO studentDTO, int id) {
        _dbContext.Students.Update(DtoToModel(studentDTO));
        await _dbContext.SaveChangesAsync();
    }
    internal async Task DeleteStudentAsync(int id) {
        var studentToDelete = await _dbContext.Students.FirstOrDefaultAsync(student => student.Id == id);
        _dbContext.Students.Remove(studentToDelete);
        await _dbContext.SaveChangesAsync();
    }
    private static StudentDTO ModelToDto(Student student) {
        return new StudentDTO {
            DateOfBirth = student.DateOfBirth,
            FirstName = student.FirstName,
            LastName = student.LastName,
            Id = student.Id
        };
    }
    private static Student DtoToModel(StudentDTO studentDTO) {
        return new Student {
            DateOfBirth = studentDTO.DateOfBirth,
            FirstName = studentDTO.FirstName,
            LastName = studentDTO.LastName,
            Id = studentDTO.Id
        };
    }

}
