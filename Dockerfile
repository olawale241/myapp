# Use a Ruby runtime as a base image
FROM ruby:2.7.2

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install the dependencies
RUN bundle install

# Copy the rest of the application to the container
COPY . .

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
