-- Deploy schemas/dashboard_public/tables/user_actions/fixtures/add_user_actions to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table
-- requires: schemas/dashboard_public/tables/action_items/fixtures/add_action_items 
-- requires: schemas/dashboard_public/tables/action_goals/fixtures/add_action_goals 
-- requires: schemas/dashboard_public/tables/user_settings/fixtures/add_user_settings 
-- requires: schemas/dashboard_public/tables/zip_codes/fixtures/add_zips 
-- requires: schemas/dashboard_public/tables/user_actions/triggers/add_user_action

BEGIN;

CREATE FUNCTION add_user_actions_fixture() returns void as $$
DECLARE
   the_action_id uuid;
   uid uuid;
   vid uuid;
        
   vverified bool;
   vcompleted bool;
BEGIN

FOR the_action_id IN
SELECT o.id as ai
FROM dashboard_public.actions o
LOOP

    FOR uid IN
        SELECT u.id as uid
        FROM dashboard_public.users u
        WHERE type = 0
    LOOP
        
        IF ((RANDOM() * 2)::INT = 0) THEN 
            CONTINUE;
        END IF;

        IF ((RANDOM() * 5)::INT = 0) THEN 
            CONTINUE;
        END IF;

        -- SELECT id FROM dashboard_public.users 
        --     WHERE type = 0 AND id != uid
        --     OFFSET floor( random() * (select count(*) from dashboard_public.users WHERE type = 0 AND id != uid ) ) LIMIT 1
        -- INTO vid;

        vcompleted = faker.boolean();
        IF (vcompleted IS TRUE) THEN 
            vverified = faker.boolean();
        ELSE 
            vverified = FALSE;
        END IF;

        INSERT INTO dashboard_public.user_actions
        (
            user_id,
            action_id,
            action_started,
            -- verifier_id,
            complete,
            verified,
            verified_date
        )
        VALUES 
        (
            -- user_id,
            uid,
            -- action_id,
            the_action_id,
            -- action_started,
            faker.date(1, 20),
            -- verifier_id,
            -- vid,
            -- completed,
            vcompleted,
            -- verified,
            vverified,
            -- verified_date,
            faker.date(1, 20)
        );

    END LOOP;

END LOOP;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM add_user_actions_fixture();

DROP FUNCTION add_user_actions_fixture;


COMMIT;
