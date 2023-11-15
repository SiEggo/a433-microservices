# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
