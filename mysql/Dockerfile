FROM mysql:latest

# Copy the data.txt file
COPY data.txt /data.txt

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod 755 /var/lib/mysql

# Copy initialization scripts
COPY students.sql /docker-entrypoint-initdb.d/
COPY user.sql /docker-entrypoint-initdb.d/user/

# Copy the script that will read the environment variables
COPY set-env.sh /set-env.sh
RUN chmod +x /set-env.sh

EXPOSE 3306

# custom entrypoint to source the environment variables and then start MySQL
ENTRYPOINT ["bash", "-c", "source /set-env.sh && exec docker-entrypoint.sh mysqld"]


