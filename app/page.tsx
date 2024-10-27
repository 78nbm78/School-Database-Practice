import { db } from "@/database/db";

export default async function Home() {
  const studentsData = await db.students.findMany();
  const teachersData = await db.teachers.findMany();

  console.log(teachersData)

  return (
    <div className="max-w-3xl mx-auto">
      {studentsData.map(student => (
        
        <div className="text-right border-b" key={student.id}>
          <p>اسم کوچک: {student.first_name}</p>
          <p>نام خانوادگی: {student.last_name}</p>
          <p>کدملی: {student.national_code}</p>
          <p>موبایل: {student.mobile}</p>
          <p>کد دانش آموزی: {student.student_code}</p>
        </div>

      ))}
    </div>
  );
}
