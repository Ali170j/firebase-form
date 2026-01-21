# استخدم Nginx كخادم ويب خفيف
FROM nginx:alpine

# انسخ كل ملفات المشروع إلى مجلد html في Nginx
COPY . /usr/share/nginx/html

# فتح البورت 80
EXPOSE 80

# تشغيل Nginx عند بدء الحاوية
CMD ["nginx", "-g", "daemon off;"]
