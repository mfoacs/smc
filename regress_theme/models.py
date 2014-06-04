
from django.db import models
from django.utils.translation import ugettext_lazy as _

from mezzanine.core.fields import FileField
from mezzanine.core.models import Displayable, Orderable
from mezzanine.utils.models import AdminThumbMixin, upload_to


class HomePageSlide(Orderable, Displayable, AdminThumbMixin):
    '''
    A slide in the home page slider
    '''
    image = FileField(_("Image"), max_length=200, format="Image",
        upload_to=upload_to("regress_theme.HomePageSlide.image", "slider"),
        help_text="Will be cropped to 920x390")
    link = models.CharField(max_length=2000, blank=True)

    admin_thumb_field = "image"

    def get_absolute_url(self):
        return '/'
