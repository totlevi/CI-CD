package via.doc1.devopsdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import via.doc1.devopsdemo.model.Task;

interface TaskRepository extends JpaRepository<Task, String> {
}
