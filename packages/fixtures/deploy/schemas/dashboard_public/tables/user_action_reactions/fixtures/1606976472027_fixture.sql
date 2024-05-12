-- Deploy schemas/dashboard_public/tables/user_action_reactions/fixtures/1606976472027_fixture to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table
-- requires: schemas/dashboard_public/tables/user_actions/fixtures/add_user_actions 

BEGIN;

CREATE FUNCTION user_action_reaction_fixture() returns void as $$
DECLARE
   the_action_id uuid;
   the_user_action_id uuid;
   the_user_id uuid;
   the_reacter_id uuid;
BEGIN

FOR the_user_action_id, the_action_id, the_user_id IN
SELECT a.id, a.action_id, a.user_id 
FROM dashboard_public.user_actions a
WHERE complete = TRUE and verified = TRUE
LOOP

    FOR the_reacter_id IN
        SELECT u.id 
        FROM dashboard_public.users u
        WHERE type = 0 AND u.id != the_user_id
    LOOP
        
        IF ((RANDOM() * 2)::INT = 0) THEN 
            INSERT INTO dashboard_public.user_action_reactions
            (
                user_action_id, 
                user_id,
                reacter_id, 
                action_id
            )  values 
            (
                the_user_action_id,
                the_user_id,
                the_reacter_id,
                the_action_id
            );
        END IF;
    END LOOP;

END LOOP;

END;
$$
LANGUAGE 'plpgsql' VOLATILE;

SELECT * FROM user_action_reaction_fixture();

DROP FUNCTION user_action_reaction_fixture;

COMMIT;
