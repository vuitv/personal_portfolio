class Education {
  const Education(this.from, this.to, this.organization, this.post);

  final String from;
  final String to;
  final String organization;
  final String post;

  static const timeline = {
    'en': [
      Education(
        'September 2022',
        'Present',
        'Vido Center LLC',
        'Mobile developer',
      ),
      Education(
        'April 2020',
        'September 2022',
        'Sapo Technology JSC',
        'Mobile developer',
      ),
      Education(
        'September 2012',
        'January 2017',
        'Electric Power University',
        'Software technology',
      ),
    ],
    'vi': [
      Education(
        'Tháng 9 năm 2022',
        'Hiện tại',
        'Vido Center LLC',
        'Lập trình viên',
      ),
      Education(
        'Tháng 4 năm 2021',
        'Tháng 9 năm 2022',
        'Sapo Technology JSC',
        'Lập trình viên',
      ),
      Education(
        'Tháng 9 năm 2012',
        'Tháng 1 năm 2017',
        'Đại học Điện Lực',
        'Công nghệ phần mềm',
      ),
    ],
  };
}
