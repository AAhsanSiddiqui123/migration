-- Deploy migrate/admins to pg

BEGIN;

DO $LQLMIGRATION$
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

  END;
$LQLMIGRATION$;

COMMIT;
