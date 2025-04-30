# Use official Nginx base image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files to nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
