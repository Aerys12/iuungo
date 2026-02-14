from .base import *  # noqa: F403
from .base import env

SECRET_KEY = env(
    "DJANGO_SECRET_KEY",
    default="bEFKMVJRCdKpI31bOuix6PSOjsdQb7mEnAGJh8t2WFAcRnmJmDKhXXPQtjKlaMqS",
)
DEBUG = False

STORAGES = {
    "default": {
        "BACKEND": "django.core.files.storage.FileSystemStorage",
    },
    "staticfiles": {
        "BACKEND": "whitenoise.storage.CompressedManifestStaticFilesStorage",
    },
}
