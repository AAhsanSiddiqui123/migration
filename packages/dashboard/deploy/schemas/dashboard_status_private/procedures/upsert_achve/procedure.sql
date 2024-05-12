-- Deploy: schemas/dashboard_status_private/procedures/upsert_achve/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_private/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table

BEGIN;

CREATE FUNCTION "dashboard_status_private".upsert_achve ( vactor_id uuid, vname text, vcount int ) RETURNS void AS $EOFCODE$
BEGIN
    INSERT INTO "dashboard_status_public".app_achievements (actor_id, name, count)
    VALUES 
        (vactor_id, vname, GREATEST(vcount, 0))
    ON CONFLICT ( actor_id, name )
    DO UPDATE SET 
        count = app_achievements.count + EXCLUDED.count
    ;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;
GRANT EXECUTE ON FUNCTION "dashboard_status_private".upsert_achve TO authenticated;
COMMIT;
