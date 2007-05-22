for adapter in %w( mysql postgresql sqlite sqlite3 firebird sqlserver sqlserver_odbc db2 oracle sybase openbase frontbase )
  Rake::TestTask.new("test_#{adapter}") { |t|
    t.libs << "test" << "test/connections/native_#{adapter}"
    adapter_short = adapter == 'db2' ? adapter : adapter[/^[a-z]+/]
    t.pattern = "test/**/test_*}.rb"
    t.verbose = true
  }
end

SCHEMA_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..', *%w(test fixtures db_definitions)))

desc 'Build the MySQL test databases'
task :build_mysql_databases do 
  %x( mysqladmin  create activerecord_unittest )
  %x( mysqladmin  create activerecord_unittest2 )
  %x( mysql -e "grant all on activerecord_unittest.* to rails@localhost" )
  %x( mysql -e "grant all on activerecord_unittest2.* to rails@localhost" )
  %x( mysql  activerecord_unittest < #{File.join(SCHEMA_PATH, 'mysql.sql')} )
  %x( mysql  activerecord_unittest < #{File.join(SCHEMA_PATH, 'mysql2.sql')} )
end

desc 'Drop the MySQL test databases'
task :drop_mysql_databases do 
  %x( mysqladmin -f drop activerecord_unittest )
  %x( mysqladmin -f drop activerecord_unittest2 )
end

desc 'Rebuild the MySQL test databases'
task :rebuild_mysql_databases => [:drop_mysql_databases, :build_mysql_databases]

desc 'Build the PostgreSQL test databases; Usage: DB_USER=<dbuser_or_postgres_default> rake build_postgresql_databases'
task :build_postgresql_databases do 
  %x( createdb -U #{db_user = DB_USER || 'postgres'} activerecord_unittest )
  %x( createdb -U #{db_user} activerecord_unittest2 )
  %x( psql activerecord_unittest -f #{File.join(SCHEMA_PATH, 'postgresql.sql')} #{db_user} )
  %x( psql activerecord_unittest2 -f #{File.join(SCHEMA_PATH, 'postgresql2.sql')}  #{db_user} )
end

desc 'Drop the PostgreSQL test databases'
task :drop_postgresql_databases do 
  %x( dropdb -U #{db_user = DB_USER || 'postgres'} activerecord_unittest )
  %x( dropdb -U #{db_user} activerecord_unittest2 )
end

desc 'Rebuild the PostgreSQL test databases'
task :rebuild_postgresql_databases => [:drop_postgresql_databases, :build_postgresql_databases]

desc 'Build the FrontBase test databases'
task :build_frontbase_databases => :rebuild_frontbase_databases 

desc 'Rebuild the FrontBase test databases'
task :rebuild_frontbase_databases do
  build_frontbase_database = Proc.new do |db_name, sql_definition_file|
    %(
      STOP DATABASE #{db_name};
      DELETE DATABASE #{db_name};
      CREATE DATABASE #{db_name};

      CONNECT TO #{db_name} AS SESSION_NAME USER _SYSTEM;
      SET COMMIT FALSE;

      CREATE USER RAILS;
      CREATE SCHEMA RAILS AUTHORIZATION RAILS;
      COMMIT;

      SET SESSION AUTHORIZATION RAILS;
      SCRIPT '#{sql_definition_file}';

      COMMIT;

      DISCONNECT ALL; 
    )
  end
  create_activerecord_unittest  = build_frontbase_database['activerecord_unittest',  File.join(SCHEMA_PATH, 'frontbase.sql')]
  create_activerecord_unittest2 = build_frontbase_database['activerecord_unittest2', File.join(SCHEMA_PATH, 'frontbase2.sql')]
  execute_frontbase_sql = Proc.new do |sql| 
    system(<<-SHELL)
    /Library/FrontBase/bin/sql92 <<-SQL
    #{sql}
    SQL
    SHELL
  end
  execute_frontbase_sql[create_activerecord_unittest]
  execute_frontbase_sql[create_activerecord_unittest2]
end
