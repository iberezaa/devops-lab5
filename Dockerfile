FROM python:3.11

# Копируем файл зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install -r requirements.txt

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем весь проект в контейнер
COPY src .

# Указываем команду для запуска приложения
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]