class Task {
  String judul;
  String assignee;
  String deadline;
  String status = 'To Do';

  Task(this.judul, this.assignee, this.deadline);

  void mulaiKerjakan() {
    status = 'In Progress';
  }

  void selesaikan() {
    status = 'Done';
  }

  void tampilkanTask() {
    print('Task: $judul | Assignee: $assignee | Deadline: $deadline | Status: $status');
  }
}

void main() {
  // Membuat 3 task untuk satu tim proyek
  var task1 = Task('Desain UI Login', 'windah', 'Besok');
  var task2 = Task('Setup Database', 'miawaug', 'Lusa');
  var task3 = Task('Unit Testing', 'Galuh', 'Minggu depan');

  // Mengubah status masing-masing secara berbeda
  task1.mulaiKerjakan(); // Status menjadi In Progress
  task2.selesaikan();    // Status menjadi Done
  // task3 dibiarkan tetap 'To Do'

  // Menampilkan detail task
  task1.tampilkanTask();
  task2.tampilkanTask();
  task3.tampilkanTask();
}