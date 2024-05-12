-- Deploy: schemas/dashboard_limits_private/procedures/membership_limits_check/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_private/schema

BEGIN;

CREATE FUNCTION "dashboard_limits_private".membership_limits_check (limitname citext, amount int default 1, user_id uuid default jwt_public.current_user_id())
  RETURNS BOOLEAN
AS $CODEZ$
DECLARE
    limit_exists boolean;
    max_default int = 0;
    rec "dashboard_limits_public".membership_limits;
BEGIN
    SELECT EXISTS (SELECT 1 FROM "dashboard_limits_public".membership_limits 
        WHERE name = limitname
        AND actor_id = user_id
    ) INTO limit_exists;
    IF (limit_exists IS FALSE) THEN 
        SELECT max FROM "dashboard_limits_public".membership_limit_defaults
            WHERE name = limitname
        INTO max_default;
        IF (NOT FOUND) THEN 
            max_default = 0;
        END IF;
        INSERT INTO "dashboard_limits_public".membership_limits (name, num, max, actor_id)
        VALUES (limitname, 0, max_default, user_id);
    END IF;
    SELECT * FROM "dashboard_limits_public".membership_limits
        WHERE name = limitname
        AND actor_id = user_id
    INTO rec;
    IF (rec.max >= rec.num + amount) THEN 
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    RETURN FALSE;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
