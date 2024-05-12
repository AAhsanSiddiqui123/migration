-- Deploy schemas/dashboard_public/tables/user_action_item_verifications/triggers/user_action_item_verify_set_props to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_user_action_item_verify_set_props()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE dashboard_public.user_action_items
        SET rejected = NEW.rejected,
            verified = NEW.verified,
            verified_date = NOW()
    WHERE id = NEW.user_action_item_id;

    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE
SECURITY DEFINER;

CREATE TRIGGER user_action_item_verify_set_props
BEFORE INSERT ON dashboard_public.user_action_item_verifications
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_user_action_item_verify_set_props();



COMMIT;
