
from mezzanine import template

from regress_theme.models import HomePageSlide

register = template.Library()


@register.as_tag
def home_page_slides(limit=5):
    '''
    Places home page slides into the context
    '''
    return HomePageSlide.objects.published()[:limit]
