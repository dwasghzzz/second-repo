# 1. Указываем базовый образ
FROM node:18

# 2. Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# 3. Копируем package.json и package-lock.json
COPY package*.json ./

# 4. Устанавливаем зависимости
RUN npm install

# 5. Копируем остальные файлы
COPY . .

# 6. Открываем порт (Vite по умолчанию 5173)
EXPOSE 5173

# 7. Запускаем dev-сервер
CMD ["npm", "run", "dev"]