const express = require('express');
const app = express();

// เส้นทางหลักสำหรับแสดงข้อความ "Hello, World!" บนหน้าเว็บ
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// ตั้งค่าพอร์ตที่เซิร์ฟเวอร์ Express จะทำงาน
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
