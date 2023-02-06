FROM ruby
WORKDIR /src/
RUN gem install json
ENV file "data.json"
COPY . .
CMD ruby one.rb 5