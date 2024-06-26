-- Deploy: schemas/dashboard_private/trigger_fns/phone_numbers_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_private/schema

BEGIN;

CREATE FUNCTION "dashboard_private".phone_numbers_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field "dashboard_public".phone_numbers;
BEGIN
    SELECT * INTO v_primary_field
        FROM "dashboard_public".phone_numbers e
        WHERE e.owner_id = NEW.owner_id
        AND is_primary IS TRUE;
    IF (NOT FOUND) THEN 
        NEW.is_primary = TRUE;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trigger_name
BEFORE INSERT
    ON "dashboard_public".phone_numbers FOR EACH ROW
EXECUTE PROCEDURE "dashboard_private".phone_numbers_insert_tg ();
CREATE UNIQUE INDEX phone_numbers_is_primary_idx
    ON "dashboard_public".phone_numbers (is_primary, owner_id)
    WHERE (is_primary is true);
COMMIT;
