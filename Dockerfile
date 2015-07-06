FROM microsoft/aspnet

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]

# Step 3: Build the container image
# docker build -t myapp .
# Step 4: Run the container
# docker run -t -d -p 80:5004 myapp
