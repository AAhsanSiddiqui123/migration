-- Deploy: schemas/dashboard_private/procedures/uuid_generate_v4/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;

CREATE FUNCTION "dashboard_private".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('dashboard');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "dashboard_private".uuid_generate_v4 TO public;
COMMIT;
