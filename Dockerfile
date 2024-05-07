# เลือกฐาน (Base) image จาก Docker Hub
FROM node:14

# สร้างโฟลเดอร์ app ในภายใน Docker image
WORKDIR /app

# คัดลอก package.json และ package-lock.json จากโฟลเดอร์โปรเจ็กต์
COPY package*.json ./

# ติดตั้ง dependencies ด้วย npm
RUN npm install

# คัดลอกไฟล์โค้ดทั้งหมดไปยังโฟลเดอร์ app ใน Docker image
COPY . .

# ตั้งค่าพอร์ตที่เซิร์ฟเวอร์ Express จะทำงาน
EXPOSE 3000

# คำสั่งสำหรับรันเซิร์ฟเวอร์ Express เมื่อ Docker container ถูกเริ่มขึ้น
CMD ["node", "app.js"]
