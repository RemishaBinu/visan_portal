class SkillsService {
  static SkillsService instance = SkillsService();

  static SkillsService getInstance(){
    return instance;
  }

  List<String> getAllSkills(){
    return ['Figma', 'Android', 'UI/UX', 'Web Developement','App development','Business development']
      .toList();
  }
}