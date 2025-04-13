class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: 'assets/images/onboard1.png',
    title: 'Manage your tasks',
    description: 'You can easily manage all of your daily tasks in Dome for free',
  ),
  OnboardingModel(
    image: 'assets/images/onboard2.png',
    title: 'Create daily routine',
    description: 'In UpTodo you can create your personalized routine to stay productive',
  ),
  OnboardingModel(
    image: 'assets/images/onboard3.png',
    title: 'Organaize your tasks',
    description: 'You can organize your daily tasks by adding your tasks into separate categories',
  ),
];
