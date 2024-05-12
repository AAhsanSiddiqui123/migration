-- Deploy schemas/dashboard_public/tables/user_action_verifications/triggers/insert_user_action_item_verification_notes to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table

BEGIN;

DROP TRIGGER insert_user_action_item_verification_notes ON dashboard_public.user_action_verifications;
DROP FUNCTION dashboard_private.tg_insert_user_action_item_verification_notes; 


CREATE FUNCTION dashboard_private.tg_insert_user_action_item_verification_notes()
RETURNS TRIGGER AS $$
DECLARE
  v_notes TEXT; 
BEGIN
    SELECT string_agg(notes,chr(10)) as notes FROM dashboard_public.user_action_item_verifications where user_id=NEW.user_id AND action_id=NEW.action_id AND user_action_id=NEW.user_action_id AND rejected=true
    INTO v_notes;

    IF v_notes IS NOT NULL AND v_notes<>'' THEN
         NEW.notes = v_notes;
    END IF;

 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; 

CREATE TRIGGER insert_user_action_item_verification_notes
BEFORE INSERT ON dashboard_public.user_action_verifications
FOR EACH ROW
WHEN (NEW.rejected = true)
EXECUTE PROCEDURE dashboard_private.tg_insert_user_action_item_verification_notes ();



COMMIT;
