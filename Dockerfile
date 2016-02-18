# Uses Busybox as base image
FROM busybox
MAINTAINER Albin Gilles "gilles.albin@gmail.com"
ENV REFRESHED_AT 2016-02-19

# Set the entrypoint
ENTRYPOINT ["tail"]
# Set the cmd
CMD ["-f", "/dev/null"]

# Set the port exposed
EXPOSE 3000

# Create a working directory
RUN mkdir /app_dir

# Set this as working directory
WORKDIR /app_dir

# Copy all files in the build context into the working directory
COPY . .
