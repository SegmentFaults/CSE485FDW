-- Create extension
CREATE EXTENSION multicorn;

-- Create server
CREATE SERVER bigquery_srv FOREIGN DATA WRAPPER multicorn
OPTIONS (
    wrapper 'bigquery_fdw.fdw.ConstantForeignDataWrapper'
);

-- Create sample table
CREATE FOREIGN TABLE nations(
    nationkey bigint,
    name text,
    regionkey bigint,
    comment text
) SERVER bigquery_srv
OPTIONS (
    fdw_dataset 'gentileproject-181013.CSE485Feb14',
    fdw_table 'Nation',
    fdw_key '/opt/key/key.json'
);
