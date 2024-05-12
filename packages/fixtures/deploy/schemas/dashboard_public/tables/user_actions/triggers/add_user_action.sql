-- Deploy schemas/dashboard_public/tables/user_actions/triggers/add_user_action to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_add_user_action()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.location IS NULL) THEN 
        SELECT a.location FROM dashboard_public.actions a
            WHERE a.id = NEW.action_id
        INTO NEW.location;
    END IF;
    IF (NEW.location IS NULL) THEN 
        SELECT ST_GeometryN(ST_GeneratePoints(z.bbox, 1, (random() * 1000 + 1)::INT), 1)
            FROM dashboard_public.user_settings s 
        INNER JOIN dashboard_public.zip_codes z ON(z.zip = s.zip)
        WHERE s.user_id = NEW.user_id
        INTO NEW.location;
    END IF;
  RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER; 

CREATE TRIGGER add_user_action
BEFORE INSERT ON dashboard_public.user_actions
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_add_user_action ();

COMMIT;
