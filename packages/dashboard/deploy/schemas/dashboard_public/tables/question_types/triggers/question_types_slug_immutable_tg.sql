-- Deploy: schemas/dashboard_public/tables/question_types/triggers/question_types_slug_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;
CREATE TRIGGER question_types_slug_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".question_types 
 FOR EACH ROW 
 WHEN (OLD.slug IS DISTINCT FROM NEW.slug AND old.slug IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'slug' );
COMMIT;
