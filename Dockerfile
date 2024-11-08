# Use an Nginx image to serve the HTML file
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html . 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
