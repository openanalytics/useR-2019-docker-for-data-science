FROM trestletech/plumber
WORKDIR /payload/
COPY api.R api.R 

# CMD ["/payload/api.R"]
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('/payload/api.R'); pr$run(host='0.0.0.0', port=8000)"]
