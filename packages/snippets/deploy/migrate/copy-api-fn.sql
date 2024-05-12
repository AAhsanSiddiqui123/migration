-- Deploy migrate/copy-api-fn to pg

BEGIN;

CREATE FUNCTION meta_public.meta_copy_api(
    database_name text,
    src_api text,
    dst_api text
) returns uuid as $$
DECLARE
    db_id uuid;
    new_api_id uuid;
    ref_api_id uuid;
    api meta_public.apis;
BEGIN

    SELECT id FROM collections_public.database WHERE name = database_name
        INTO db_id;

    IF (NOT FOUND) THEN 
        RAISE EXCEPTION 'NOT_FOUND (db)';
    END IF;

    SELECT * FROM meta_public.apis 
        WHERE database_id = db_id AND name = src_api
    INTO api;

    IF (NOT FOUND) THEN 
        RAISE EXCEPTION 'NOT_FOUND (api)';
    END IF;

    INSERT INTO meta_public.apis ( database_id, name, dbname, is_public, role_name, anon_role ) VALUES
        (db_id, dst_api, api.dbname, api.is_public, api.role_name, api.anon_role)
    RETURNING id INTO new_api_id;

    INSERT INTO meta_public.api_schemata ( database_id, schema_id, api_id )
        SELECT database_id, schema_id, new_api_id::uuid 
        FROM meta_public.api_schemata
        WHERE database_id = db_id
        AND api_id = api.id;

    RETURN new_api_id;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

COMMIT;
