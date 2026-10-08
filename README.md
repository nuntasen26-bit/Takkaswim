# 🏊 Takkasila Swimming Club Hub (ชมรมว่ายน้ำราชภัฏตักสิลา)

ระบบแอพพลิเคชันและพอร์ทัลสโมสรว่ายน้ำตักสิลา ออกแบบด้วยธีม **Dark Futuristic Aquatic HUD** จาก Google Stitch พร้อม Smartphone Simulator และเครื่องมือสำรวจ Design System

---

## 🚀 วิธีการติดตั้งและเปิดใช้งานในเครื่องต่างๆ (Installation Guide)

โปรเจกต์นี้มีไฟล์ติดตั้งและรันโปรแกรมอัตโนมัติรองรับทุกระบบปฏิบัติการ:

### 1. สำหรับ Windows (Windows 10 / 11)
1. ดับเบิลคลิกที่ไฟล์ **`install.bat`** เพื่อทำการติดตั้ง:
   - ระบบจะตรวจสอบ Python ให้อัตโนมัติ
   - สร้างไอคอนทางลัด **"Takkasila Swimming Club"** บนหน้าจอ Desktop ของคุณ
2. **วิธีเปิดใช้งาน**:
   - ดับเบิลคลิกที่ไอคอนบน Desktop หรือดับเบิลคลิกที่ไฟล์ **`start.bat`**
   - โปรแกรมจะเปิดเว็บเบราว์เซอร์เข้าสู่หน้าแอพพลิเคชันทันที

---

### 2. สำหรับ macOS (MacBook / iMac / Mac mini)
1. เปิด Terminal ในโฟลเดอร์นี้ แล้วรันคำสั่งติดตั้ง:
   ```bash
   ./install.sh
   ```
   *(ระบบจะสร้างไฟล์ **`Takkaswim.command`** สำหรับดับเบิลคลิกเปิดบน Mac)*
2. **วิธีเปิดใช้งาน**:
   - ดับเบิลคลิกที่ไฟล์ **`Takkaswim.command`** ใน Finder ได้ทันที
   - หรือรันคำสั่ง: `./start.sh`

---

### 3. สำหรับ Linux (Ubuntu / Debian / Fedora)
1. รันคำสั่งติดตั้ง:
   ```bash
   chmod +x install.sh start.sh
   ./install.sh
   ```
2. **วิธีเปิดใช้งาน**:
   ```bash
   ./start.sh
   ```

---

### 4. ติดตั้งเป็นแอพลงมือถือหรือคอมพิวเตอร์ (PWA - Progressive Web App)
ไม่ต้องติดตั้งโปรแกรมใดๆ เพิ่มเติม สามารถติดตั้งตรงจากเบราว์เซอร์ได้ทันที:

- **บน iPhone / iPad (Safari)**:
  1. เปิด [https://nuntasen26-bit.github.io/Takkaswim/](https://nuntasen26-bit.github.io/Takkaswim/)
  2. กดปุ่ม **แชร์ (Share)** 
  3. เลือก **"เพิ่มไปยังหน้าจอโฮม" (Add to Home Screen)**
  4. จะได้ไอคอนแอพ Takkaswim เปิดใช้งานได้เต็มจอเหมือนแอพมือถือทั่วไป

- **บน Android (Chrome)**:
  1. เปิด [https://nuntasen26-bit.github.io/Takkaswim/](https://nuntasen26-bit.github.io/Takkaswim/)
  2. กดปุ่ม **"ติดตั้งแอพ"** ที่แถบเมนูด้านบน หรือกดปุ่ม 3 จุด เลือก **"ติดตั้งแอป" (Install App)**

- **บนคอมพิวเตอร์ (Chrome / Edge)**:
  1. เปิดหน้าเว็บ แล้วกดปุ่มไอคอนคอมพิวเตอร์/ติดตั้งที่แถบ Address Bar หรือคลิกปุ่ม **"ติดตั้งแอพ"** ในแถบเมนู
  2. แอพจะถูกติดตั้งเป็นโปรแกรม Standalone แยกหน้าต่างออกมาอย่างสวยงาม

---

## 📁 โครงสร้างไฟล์ในโปรเจกต์ (Project Structure)

```text
├── install.bat          # ไฟล์ติดตั้งสำหรับ Windows (สร้าง Desktop Shortcut)
├── start.bat            # ไฟล์เปิดโปรแกรมสำหรับ Windows
├── install.sh           # ไฟล์ติดตั้งสำหรับ macOS / Linux
├── start.sh             # ไฟล์เปิดโปรแกรมสำหรับ macOS / Linux
├── Takkaswim.command    # ตัวเปิดโปรแกรมแบบดับเบิลคลิกบน macOS
├── server.py            # Local HTTP Server พร้อมระบบเปิดเบราว์เซอร์อัตโนมัติ
├── manifest.webmanifest # PWA Manifest สำหรับติดตั้งแอพ
├── sw.js                # Service Worker รองรับการทำงานแบบออฟไลน์
├── index.html           # พอร์ทัลศูนย์กลาง + Smartphone Device Simulator
├── DESIGN_SYSTEM.md     # คู่มือและโทเคนระบบดีไซน์ Takkasila
├── design_system.json   # สเปกโทเคนสีและฟอนต์จาก Stitch
├── screens/             # ไฟล์ HTML ของทั้ง 7 หน้าจอ
└── assets/              # ภาพถ่ายพอร์ตเทรตและกราฟิกสโมสร
```

---

## 🌐 ลิงก์ออนไลน์ (Live Production)
- **GitHub Repository**: [https://github.com/nuntasen26-bit/Takkaswim](https://github.com/nuntasen26-bit/Takkaswim)
- **GitHub Pages Website**: [https://nuntasen26-bit.github.io/Takkaswim/](https://nuntasen26-bit.github.io/Takkaswim/)
