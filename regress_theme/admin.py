
from copy import deepcopy

from django.contrib import admin

from mezzanine.core.admin import DisplayableAdmin

from models import HomePageSlide


slider_fieldsets = deepcopy(DisplayableAdmin.fieldsets)
slider_fieldsets[0][1]["fields"].extend(["image", "link", "_order"])

slider_list_display = ["admin_thumb", "title", "status", "admin_link", "_order"]



class SliderAdmin(DisplayableAdmin):
    '''
    Admin class for the slider
    '''
    fieldsets = slider_fieldsets
    list_display = slider_list_display
    list_editable = ["status", "_order"]

admin.site.register(HomePageSlide, SliderAdmin)
