FROM node:18-alpine

# Çalışma dizini
WORKDIR /app

# package.json ve package-lock.json'i kopyala
COPY package.json package-lock.json ./

# Node.js bağımlılıklarını kur
RUN npm install

# Tüm uygulama dosyalarını kopyala
COPY . ./

# Port ayarla
EXPOSE 3000

# Uygulamayı başlat
CMD ["npm", "start"]
