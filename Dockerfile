# Use lightweight nginx server
FROM nginx:alpine

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy project files to nginx folder
COPY . /usr/share/nginx/html

# Ensure permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 (web server)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]