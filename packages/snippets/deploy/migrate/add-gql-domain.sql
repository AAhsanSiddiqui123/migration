-- Deploy migrate/add-gql-domain to pg

BEGIN;

-- this function adds GraphQL endpoint + CORS

CREATE FUNCTION meta_public.add_gql_domain(
    database_name text,
    api_name text,
    subdomain_name text,
    domain_name text,
    url text
) returns void as $$
DECLARE
    db_id uuid;
    v_api_id uuid;
BEGIN

    SELECT id FROM collections_public.database WHERE name = database_name
        INTO db_id;

    IF (NOT FOUND) THEN 
        RAISE EXCEPTION 'NOT_FOUND (db)';
    END IF;

    SELECT id FROM meta_public.apis 
        WHERE database_id = db_id AND name = api_name
    INTO v_api_id;

    IF (NOT FOUND) THEN 
        RAISE EXCEPTION 'NOT_FOUND (api)';
    END IF;


    IF NOT EXISTS( 
        SELECT 1 FROM meta_public.domains
            WHERE
                database_id = db_id
                AND api_id = v_api_id
                AND subdomain = subdomain_name
                AND domain = domain_name
    ) THEN 

        INSERT INTO meta_public.api_modules ( database_id, api_id, name, data ) VALUES
        ( db_id, v_api_id, 'cors',
            jsonb_build_object('urls', ARRAY[url])
        );

        INSERT INTO meta_public.domains (database_id, api_id, subdomain, domain)
            VALUES (db_id, v_api_id, subdomain_name, domain_name);

    END IF;


END;
$$
LANGUAGE 'plpgsql' VOLATILE;


COMMIT;
