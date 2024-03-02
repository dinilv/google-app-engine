# Use an official Go runtime as the base image
FROM golang:1.19 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules files
COPY go.mod go.sum ./

# Download and install dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o daily_quote .

# Start a new stage from scratch
FROM golang:1.19

# Set the working directory inside the container
WORKDIR /app

# Copy the binary from the builder stage to the final stage
COPY --from=builder /app/daily_quote .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["./daily_quote"]
