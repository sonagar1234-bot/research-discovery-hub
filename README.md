# 🚀 Research Discovery Hub (Smart Reading Workspace)

ระบบค้นคว้าและบริหารการอ่านงานวิจัยอัจฉริยะ (Web Edition) สำหรับนักวิจัย, นักศึกษาปริญญาโท-เอก, และทีมวิจัย

---

## 🌟 จุดเด่นของระบบ (Key Architecture)

1. **Private Decentralized Sandbox (คลังส่วนตัวบนอุปกรณ์ของคุณ)**
   - ทุกข้อมูลงานวิจัยที่คุณค้นพบ, บันทึกการอ่าน (Reading Notes), ตัวเลขการทดลอง (Empirical Data), และไฮไลต์ จะถูกจัดเก็บลงใน **`localStorage` บนเบราว์เซอร์ของอุปกรณ์คุณโดยตรง**
   - **ไม่ต้องลงทะเบียน (No Signup)**, **ไม่มีเซิร์ฟเวอร์ดักเก็บข้อมูล**, ข้อมูลวิทยานิพนธ์ของคุณปลอดภัย 100%
   - สามารถใช้งานได้ทั้งบน **PC, Mac, iPad, Tablet และสมาร์ทโฟน**

2. **3-Pass Smart Reading Framework**
   - **Pass 1 (Screening 5-10 นาที)**: อ่านเพื่อคัดกรอง ดู Abstract และความสอดคล้องกับหัวข้อ
   - **Pass 2 (Deep Dive 30-60 นาที)**: อ่านเจาะลึก วิเคราะห์ระเบียบวิธีวิจัยและผลการทดลอง
   - **Pass 3 (Synthesis & Benchmarking)**: สังเคราะห์ช่องว่างงานวิจัย (Research Gaps) สกัดตัวเลขเข้า Matrix

3. **Universal Full-Text Direct Links**
   - มีปุ่มทางลัดเข้าถึงงานวิจัยฉบับเต็มทันทีผ่าน:
     - 📄 **Open Access PDF ฟรี** (ระบบตรวจจับลิงก์ Unpaywall / Semantic Scholar อัตโนมัติ)
     - 🔗 **DOI Official Link**
     - 🎓 **Google Scholar & Semantic Scholar**
     - 🔬 **ResearchGate Search**

4. **AI/Instant Abstract Translation (แปลไทยทันที)**
   - มีหน้าต่างเด้งอ่านบทคัดย่อขนาดใหญ่ (Abstract Modal)
   - ปุ่ม **"🇹🇭 แปลเป็นไทย"** สรุปใจความสำคัญเป็นภาษาไทยใน 1 วินาที
   - เครื่องมือขีดไฮไลต์ข้อความสำคัญ (เหลือง, เขียว, แดง) เซฟติดไว้ในบทคัดย่อ

5. **Multi-Format Export & Import**
   - **Export**: รองรับทั้ง **CSV/Excel, BibTeX (.bib), Markdown (.md สำหรับ Obsidian), RIS (EndNote/Zotero), และ JSON Backup**
   - **Import**: นำเข้าไฟล์จาก Mendeley, Zotero, หรือไฟล์ JSON ที่เพื่อนส่งให้ได้ทันที
   - มีระบบ **Undo / Redo (Ctrl+Z / Ctrl+Y)** ป้องกันการลบหรือแก้ไขผิดพลาด

---

## 📂 โครงสร้างไฟล์ในโฟลเดอร์นี้

```text
research-hub-web/
├── index.html                  # ตัวโปรแกรมหลัก (Single-page Application)
├── sample_papers_template.json # ข้อมูลตัวอย่าง 8 งานวิจัยต้นแบบ (พร้อม Import)
├── package.json                # ข้อมูลโปรเจกต์สำหรับ Cloud Hosting
├── vercel.json                 # การตั้งค่า Routing & Headers สำหรับ Vercel
├── deploy_to_vercel.bat        # สคริปต์คลิกเดียว Deploy ขึ้น Vercel
├── deploy_to_surge.bat         # สคริปต์คลิกเดียว Deploy ขึ้น Surge.sh (ได้ URL ทันที)
└── README.md                   # เอกสารคู่มือการใช้งานและการติดตั้ง
```

---

## 🚀 วิธีนำขึ้น Cloud URL ให้เพื่อนใช้งาน (Deployment Guide)

### วิธีที่ 1: Deploy ขึ้น Vercel (แนะนำอย่างยิ่ง ⭐)
1. ดับเบิ้ลคลิกไฟล์ `deploy_to_vercel.bat` หรือเปิด Terminal ในโฟลเดอร์นี้แล้วพิมพ์:
   ```bash
   vercel
   ```
2. หากยังไม่เคยล็อกอิน Vercel ระบบจะแสดงลิงก์ Device Auth ให้คลิกเปิดบนเบราว์เซอร์เพื่อกดยืนยัน (ทำครั้งเดียว)
3. เมื่อเสร็จสิ้น Vercel จะให้ URL เช่น `https://research-discovery-hub.vercel.app` คุณสามารถส่งลิงก์นี้ให้เพื่อนทุกคนเปิดใช้งานได้ทันที!

### วิธีที่ 2: Deploy ผ่าน Netlify Drop (ง่ายสุด ไม่ต้องพิมพ์คำสั่งใด ๆ)
1. เปิดเว็บไซต์ [https://app.netlify.com/drop](https://app.netlify.com/drop)
2. ลากโฟลเดอร์ `research-hub-web` ไปวางบนหน้าเว็บ
3. รอ 5 วินาที ระบบจะสร้าง Live URL ให้ใช้งานได้ทันทีฟรีตลอดชีพ!

### วิธีที่ 3: Deploy ขึ้น GitHub Pages
1. สร้าง New Repository บน GitHub (เช่น `research-discovery-hub`)
2. อัปโหลดไฟล์ในโฟลเดอร์นี้ขึ้นไป
3. ไปที่ **Settings -> Pages -> Build and deployment** เลือก Source เป็น **Deploy from a branch (main)**
4. เว็บไซต์จะเปิดให้บริการที่ `https://<username>.github.io/research-discovery-hub/`

---

## 💡 วิธีการแชร์ชุดข้อมูลวิจัยให้เพื่อน (Data Sharing Workflow)

เนื่องจากระบบทำงานแบบ Decentralized Sandbox (แยกข้อมูลของแต่ละคนเพื่อความเป็นส่วนตัว):
1. **เมื่อเพื่อนเปิดเว็บครั้งแรก**: เพื่อนจะเจอกับคลังที่ว่างเปล่า พร้อมปุ่มแนะนำเริ่มต้น
2. **หากต้องการให้เพื่อนทดลองระบบ**: เพื่อนสามารถกดปุ่ม **"🧪 โหลดตัวอย่างทดลอง 8 ฉบับ"** เพื่อดูตัวอย่างการทำงานได้ทันที
3. **หากคุณ Sean ต้องการส่งงานวิจัยในคลังของคุณให้เพื่อน**:
   - ในหน้าแดชบอร์ดของคุณ ให้คลิกปุ่ม **"💾 ส่งออก (Export)"** -> เลือก **"Full Backup (JSON)"**
   - ส่งไฟล์ `.json` นั้นให้เพื่อนทาง LINE หรือ Google Drive
   - เพื่อนแค่เปิดหน้าเว็บ แล้วคลิก **"📂 นำเข้า (Import)"** -> เลือกไฟล์ JSON นั้น
   - งานวิจัยทั้งหมดของคุณจะเข้ามาอยู่ในคลังของเพื่อนทันที โดยไม่กระทบกับข้อมูลเดิมของคุณ!
