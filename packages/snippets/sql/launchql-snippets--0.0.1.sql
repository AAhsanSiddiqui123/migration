\echo Use "CREATE EXTENSION launchql-snippets" to load this file. \quit
CREATE FUNCTION meta_public.add_gql_domain ( database_name text, api_name text, subdomain_name text, domain_name text, url text ) RETURNS void AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

DO $$
  DECLARE

    organization_id uuid;
    pyramation_id uuid = 'dc9337b9-d509-45cf-ce88-379ade58b3c2';
    admin_id uuid = 'dc9324a2-0a24-47da-3180-e4efb13477b9';

  BEGIN

    IF NOT EXISTS( SELECT 1 FROM dashboard_public.users WHERE id = pyramation_id ) THEN 
        INSERT INTO dashboard_public.users (id, username, display_name)
            VALUES (pyramation_id, 'pyramation', 'Pyramation');

        INSERT INTO dashboard_public.emails (owner_id, email)
            VALUES (pyramation_id, 'pyramation@gmail.com');

        PERFORM dashboard_encrypted.set
            (pyramation_id, 'password_hash', uuid_generate_v4()::text, 'crypt');
    END IF;

    IF NOT EXISTS( SELECT 1 FROM dashboard_public.users WHERE id = admin_id ) THEN 
        INSERT INTO dashboard_public.users (id, username, display_name)
            VALUES (admin_id, 'dashboard', 'dashboard');

        INSERT INTO dashboard_public.emails (owner_id, email)
            VALUES (admin_id, 'admin@dbe.la');

        PERFORM dashboard_encrypted.set
            (pyramation_id, 'password_hash', uuid_generate_v4()::text, 'crypt');
    END IF;

    -- admin
    UPDATE
        dashboard_memberships_public.app_memberships
    SET
        is_owner = TRUE
    WHERE
        actor_id = admin_id;
    -- pyramation@gmail.com
    UPDATE
        dashboard_memberships_public.app_memberships
    SET
        is_owner = TRUE
    WHERE
        actor_id = pyramation_id;
    -- loop
    FOR organization_id IN
    SELECT
        u.id AS organization_id
    FROM
        dashboard_public.users u
    WHERE
        TYPE = 1 LOOP
            INSERT INTO dashboard_memberships_public.memberships (is_owner, actor_id, entity_id)
                VALUES (TRUE, pyramation_id, organization_id), (TRUE, admin_id, organization_id)
            ON CONFLICT (actor_id, entity_id)
                DO UPDATE SET
                    is_owner = EXCLUDED.is_owner;
        END LOOP;

  END; $$;

CREATE FUNCTION meta_public.meta_copy_api ( database_name text, src_api text, dst_api text ) RETURNS uuid AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

DO $$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard-stage',
        'admin',
        'cms-root-stage'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard-stage',
        'cms-root-stage',
        'db8d5353113c4dc2adb7402bd24ea1e8-root-stage',
        'dbe.la',
        'https://dashboard-root-stage.dbe.la'
    );

  END; $$;

DO $$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard',
        'admin',
        'cms-root'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard',
        'cms-root',
        'db8d5353113c4dc2adb7402bd24ea1e8-root',
        'dbe.la',
        'https://dashboard-root.dbe.la'
    );

  END; $$;

DO $$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard-stage',
        'public',
        'cms-stage'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard-stage',
        'cms-stage',
        'db8d5353113c4dc2adb7402bd24ea1e8-stage',
        'dbe.la',
        'https://dashboard-stage.dbe.la'
    );

  END; $$;

DO $$
  BEGIN

    PERFORM meta_public.meta_copy_api(
        'dashboard',
        'public',
        'cms'
    );

    PERFORM meta_public.add_gql_domain(
        'dashboard',
        'cms',
        'db8d5353113c4dc2adb7402bd24ea1e8',
        'dbe.la',
        'https://dashboard.dbe.la'
    );

  END; $$;

CREATE OR REPLACE FUNCTION meta_public.meta_copy_api ( database_name text, src_api text, dst_api text ) RETURNS uuid AS $EOFCODE$
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

    INSERT INTO meta_public.rls_module ( 
        database_id,
        api_id,
        schema_id,
        private_schema_id,
        tokens_table_id,
        users_table_id,
        authenticate,
        authenticate_strict,
        "current_role",
        current_role_id
    )
    SELECT 
        database_id,
        new_api_id::uuid,
        schema_id,
        private_schema_id,
        tokens_table_id,
        users_table_id,
        authenticate,
        authenticate_strict,
        "current_role",
        current_role_id
    FROM meta_public.rls_module
        WHERE database_id = db_id
        AND api_id = api.id;
    
    RETURN new_api_id;

END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION meta_public.patch_meta_copy_api ( database_name text, src_api text, dst_api text ) RETURNS void AS $EOFCODE$
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

    SELECT id FROM meta_public.apis
        WHERE database_id = db_id AND name = dst_api
    INTO new_api_id;

    INSERT INTO meta_public.rls_module ( 
        database_id,
        api_id,
        schema_id,
        private_schema_id,
        tokens_table_id,
        users_table_id,
        authenticate,
        authenticate_strict,
        "current_role",
        current_role_id
    )
    SELECT 
        database_id,
        new_api_id::uuid,
        schema_id,
        private_schema_id,
        tokens_table_id,
        users_table_id,
        authenticate,
        authenticate_strict,
        "current_role",
        current_role_id
    FROM meta_public.rls_module
        WHERE database_id = db_id
        AND api_id = api.id;
    
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

SELECT meta_public.patch_meta_copy_api('dashboard', 'public', 'cms');

SELECT meta_public.patch_meta_copy_api('dashboard-stage', 'public', 'cms-stage');

CREATE FUNCTION dashboard_private.user_form_populate_user_answers (  ) RETURNS trigger AS $EOFCODE$

DECLARE
   the_form_id uuid;
   the_question_id uuid;

   the_user_form_id uuid;
   the_user_question_id uuid;

   the_owner_id uuid;
   the_user_id uuid;
   the_question_order int;

BEGIN

    the_form_id = NEW.form_id;
    the_user_form_id = NEW.id;
    the_user_id = NEW.user_id;

    ---
    FOR 
        the_question_id,
        the_owner_id,
        the_question_order
        IN
    SELECT a.question_id, owner_id, a.question_order
    FROM "dashboard_public".form_questions a
    WHERE form_id = the_form_id
    ORDER BY question_order
    LOOP

      INSERT INTO "dashboard_public".user_answers (
          form_id,
          question_id,
          owner_id,
          user_id,
          user_form_id,
          complete
      ) VALUES (
          the_form_id,
          the_question_id,
          the_owner_id,
          the_user_id,
          the_user_form_id,
          false
      );
      
    END LOOP;
    --
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _0000_user_form_pop_user_answers 
 AFTER INSERT ON dashboard_public.user_forms 
 FOR EACH ROW
 EXECUTE PROCEDURE dashboard_private. user_form_populate_user_answers (  );

CREATE FUNCTION dashboard_private.form_qs_pop_user_answers (  ) RETURNS trigger AS $EOFCODE$

DECLARE
   the_form_id uuid;
   the_question_id uuid;

   the_user_form_id uuid;

   the_owner_id uuid;
   the_user_id uuid;

BEGIN

    the_form_id = NEW.form_id;
    the_question_id = NEW.question_id;

    FOR 
        the_user_form_id,
        the_user_id,
        the_owner_id
        IN
    SELECT a.id, user_id, owner_id
    FROM "dashboard_public".user_forms a
    WHERE form_id = the_form_id
    AND complete = false
    LOOP

      INSERT INTO "dashboard_public".user_answers (
          form_id,
          question_id,
          owner_id,
          user_id,
          user_form_id,
          complete
      ) VALUES (
          the_form_id,
          the_question_id,
          the_owner_id,
          the_user_id,
          the_user_form_id,
          false
      );
      
    END LOOP;

    --
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _0000_form_questions_pop_user_answers 
 AFTER INSERT ON dashboard_public.form_questions 
 FOR EACH ROW
 EXECUTE PROCEDURE dashboard_private. form_qs_pop_user_answers (  );

CREATE FUNCTION dashboard_private.user_action_populate_action_items (  ) RETURNS trigger AS $EOFCODE$

DECLARE
   the_action_id uuid;
   the_action_item_id uuid;

   the_user_action_id uuid;
   the_user_action_item_id uuid;

   the_owner_id uuid;
   the_user_id uuid;
   v_item_order int;

BEGIN

    the_action_id = NEW.action_id;
    the_user_action_id = NEW.id;
    the_user_id = NEW.user_id;

    ---
    FOR 
        the_action_item_id,
        the_owner_id,
        v_item_order
        IN
    SELECT a.id, owner_id, a.item_order
    FROM "dashboard_public".action_items a
    WHERE action_id = the_action_id
    ORDER BY item_order
    LOOP

      INSERT INTO "dashboard_public".user_action_items (
          action_id,
          action_item_id,
          owner_id,
          user_id,
          user_action_id,
          complete,
          verified
      ) VALUES (
          the_action_id,
          the_action_item_id,
          the_owner_id,
          the_user_id,
          the_user_action_id,
          false,
          false
      );
      
    END LOOP;
    --
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _0000_user_action_pop_action_items 
 AFTER INSERT ON dashboard_public.user_actions 
 FOR EACH ROW
 EXECUTE PROCEDURE dashboard_private. user_action_populate_action_items (  );

CREATE FUNCTION dashboard_private.action_items_populate_user_action_items (  ) RETURNS trigger AS $EOFCODE$

DECLARE
   the_action_id uuid;
   the_action_item_id uuid;

   the_user_action_id uuid;

   the_owner_id uuid;
   the_user_id uuid;

BEGIN

    the_action_id = NEW.action_id;
    the_action_item_id = NEW.id;


    FOR 
        the_user_action_id,
        the_user_id,
        the_owner_id
        IN
    SELECT a.id, user_id, owner_id
    FROM "dashboard_public".user_actions a
    WHERE action_id = the_action_id
    AND complete = false
    LOOP

      INSERT INTO "dashboard_public".user_action_items (
          action_id,
          action_item_id,
          owner_id,
          user_id,
          user_action_id,
          complete,
          verified
      ) VALUES (
          the_action_id,
          the_action_item_id,
          the_owner_id,
          the_user_id,
          the_user_action_id,
          false,
          false
      );
      
    END LOOP;

    --
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _0000_action_items_pop_user_action_items 
 AFTER INSERT ON dashboard_public.action_items 
 FOR EACH ROW
 EXECUTE PROCEDURE dashboard_private. action_items_populate_user_action_items (  );

ALTER TABLE dashboard_public.user_actions ALTER COLUMN action_started SET DEFAULT NULL;

CREATE FUNCTION dashboard_private.items_update_user_action (  ) RETURNS trigger AS $EOFCODE$

DECLARE
    the_user_action_id uuid;
BEGIN

    UPDATE "dashboard_public".user_actions 
        SET items_updated = NOW()
    WHERE id = NEW.user_action_id;

    UPDATE "dashboard_public".user_actions 
        SET action_started = NOW()
    WHERE id = NEW.user_action_id
    AND action_started IS NULL;

    --
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _0000_items_update_user_action 
 AFTER UPDATE ON dashboard_public.user_action_items 
 FOR EACH ROW
 EXECUTE PROCEDURE dashboard_private. items_update_user_action (  );