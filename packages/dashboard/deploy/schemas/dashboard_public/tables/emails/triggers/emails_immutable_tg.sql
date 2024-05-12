-- Deploy: schemas/dashboard_public/tables/emails/triggers/emails_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;
CREATE TRIGGER emails_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".emails 
 FOR EACH ROW 
 WHEN (OLD.email IS DISTINCT FROM NEW.email AND old.email IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'email' );
COMMIT;
