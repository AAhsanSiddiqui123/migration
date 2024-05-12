-- Deploy: schemas/dashboard_public/tables/action_item_types/triggers/action_item_types_slug_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;
CREATE TRIGGER action_item_types_slug_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".action_item_types 
 FOR EACH ROW 
 WHEN (OLD.slug IS DISTINCT FROM NEW.slug AND old.slug IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'slug' );
COMMIT;
