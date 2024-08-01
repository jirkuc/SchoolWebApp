using Microsoft.EntityFrameworkCore;
using SchoolWebApp.DTO;
using SchoolWebApp.Models;

namespace SchoolWebApp.Services;
public class SubjectService {
    private ApplicationDbContext _dbContext;

    public SubjectService(ApplicationDbContext dbContext) {
        _dbContext = dbContext;
    }
    public IEnumerable<SubjectDTO> GetSubjects() {
        var allSubjects = _dbContext.Subjects;
        var subjectsDtos = new List<SubjectDTO>();
        foreach (var subject in allSubjects) {
            subjectsDtos.Add(ModelToDto(subject));
        }
        return subjectsDtos;
    }
    public async Task AddSubjectAsync(SubjectDTO subjectDTO) {
        await _dbContext.Subjects.AddAsync(DtoToModel(subjectDTO));
        await _dbContext.SaveChangesAsync();
    }

    private async Task<Subject> VerifyExistence(int id) {
        var subject = await _dbContext.Subjects.FirstOrDefaultAsync(subject => subject.Id == id);
        if (subject == null) {
            return null;
        }
        return subject;
    }

    internal async Task<SubjectDTO> GetByIdAsync(int id) {
        //var subject = await VerifyExistence(id);
        var subject = await _dbContext.Subjects.FirstOrDefaultAsync(subject => subject.Id == id);
        if (subject == null) {
            return null;
        }
        return ModelToDto(subject);
    }
    internal async Task UpdateSubjectAsync(SubjectDTO subjectDTO, int id) {
        _dbContext.Subjects.Update(DtoToModel(subjectDTO));
        await _dbContext.SaveChangesAsync();
    }
    internal async Task DeleteSubjectAsync(int id) {
        var subjectToDelete = await _dbContext.Subjects.FirstOrDefaultAsync(subject => subject.Id == id);
        _dbContext.Subjects.Remove(subjectToDelete);
        await _dbContext.SaveChangesAsync();
    }
    private static SubjectDTO ModelToDto(Subject subject) {
        return new SubjectDTO {
            Id = subject.Id,
            Name = subject.Name
        };
    }
    private static Subject DtoToModel(SubjectDTO subjectDTO) {
        return new Subject {
            Id = subjectDTO.Id,
            Name = subjectDTO.Name
        };
    }
}
