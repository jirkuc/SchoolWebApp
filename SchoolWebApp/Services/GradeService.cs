using Microsoft.EntityFrameworkCore;
using SchoolWebApp.DTO;
using SchoolWebApp.Models;
using SchoolWebApp.ViewModels;

namespace SchoolWebApp.Services;
public class GradeService {
    private ApplicationDbContext _dbContext;
    public GradeService(ApplicationDbContext dbContext) {
        _dbContext = dbContext;
    }
    public async Task<GradesDropdownsViewModel> GetGradesDropdownsData() {
        var gradesDropdownsData = new GradesDropdownsViewModel() {
            Students = await _dbContext.Students.OrderBy(student => student.LastName).OrderBy(student => student.FirstName).OrderBy(student => student.DateOfBirth).ToListAsync(),
            Subjects = await _dbContext.Subjects.OrderBy(subject => subject.Name).ToListAsync(),
        };
        return gradesDropdownsData;
    }
    internal async Task AddGradeAsync(GradeDTO gradeDTO) {
        Grade gradeToAdd = await DtoToModel(gradeDTO);
        await _dbContext.AddAsync(gradeToAdd);
        await _dbContext.SaveChangesAsync();
    }


    public async Task<IEnumerable<GradesViewModel>> GetAllGradesViewModel() {
        List<Grade> grades = await _dbContext.Grades.Include(gr => gr.Student).Include(gr => gr.Subject).ToListAsync();
        List<GradesViewModel> gradesViewModel = new List<GradesViewModel>();
        foreach (var grade in grades) {
            gradesViewModel.Add(new GradesViewModel() {
                Date = grade.Date,
                Id = grade.Id,
                Mark = grade.Mark,
                StudentName = grade.Student.StudentDesc,
                SubjectName = grade.Subject.Name,
                Topic = grade.Topic
            });
        }
        return gradesViewModel;
    }

    internal async Task<Grade> GetByIdAsync(int id) {
        return await _dbContext.Grades.Include(gr => gr.Student).Include(gr => gr.Subject).FirstOrDefaultAsync(grade => grade.Id == id);
    }
    internal async Task UpdateAsync(int id, GradeDTO gradeDTO) {
        Grade updatedGrade = await DtoToModel(gradeDTO);
        _dbContext.Grades.Update(updatedGrade);
        await _dbContext.SaveChangesAsync();
    }
    internal async Task DeleteAsync(int id) {
        var gradeToDelete = await _dbContext.Grades.FirstOrDefaultAsync(grade => grade.Id == id);
        _dbContext.Grades.Remove(gradeToDelete);
        await _dbContext.SaveChangesAsync();
    }

    internal GradeDTO ModelToDto(Grade grade) {
        return new GradeDTO {
            Date = grade.Date,
            Id = grade.Id,
            Mark = grade.Mark,
            StudentId = grade.Student.Id,
            SubjectId = grade.Subject.Id,
            Topic = grade.Topic
        };
    }
    private async Task<Grade> DtoToModel(GradeDTO gradeDTO) {
        return new Grade() {
            Id = gradeDTO.Id,
            Student = await _dbContext.Students.FirstOrDefaultAsync(student => student.Id == gradeDTO.StudentId),
            Subject = await _dbContext.Subjects.FirstOrDefaultAsync(subject => subject.Id == gradeDTO.SubjectId),
            Topic = gradeDTO.Topic,
            Date = DateTime.Today,
            Mark = gradeDTO.Mark
        };
    }

}
