# Super-class which defines general purpose methods
Snowflake <- R6::R6Class('Snowflake',
  public = list(
    account = NULL,
    username = NULL,
    initialize = function() {},
    print = function() {},
    execute = function() {},
    query = function() {},
    download = function() {},
    upload = function() {},
    stage = function() {}
  ),
  private = list(
    contextualise = function() {}
  ),
  active = list(
    role = function() {},
    warehouse = function() {},
    schema = function() {},
    database = function() {}
  )
)

# Sub-class for ODBC Backend
SnowflakeODBC <- R6::R6Class('SnowflakeODBC',
  inherit = Snowflake,
  public = list(
    initialize = function() {},
    execute = function() {},
    query = function() {}
  )
)

# Sub-class for ADBC Backend
SnowflakeADBC <- R6::R6Class('SnowflakeADBC',
  inherit = Snowflake,
  public = list(
    initialize = function() {},
    execute = function() {},
    query = function() {}
  )
)
