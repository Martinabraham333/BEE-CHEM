class UserEntity {
  final int id;
  final String roleId;
  final String role;
  final String firstName;
  final String? lastName;
  final String profileImageUrl;

  const UserEntity({
    required this.id,
    required this.roleId,
    required this.role,
    required this.firstName,
  required  this.lastName,
    required this.profileImageUrl,
  });
}
