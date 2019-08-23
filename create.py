from app import db
db.drop_all()
from app.models import Users, Posts
db.create_all()
exit()
