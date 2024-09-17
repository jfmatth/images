from django.contrib import admin
from images.models import Image

# Register your models here.
class ImageAdmin(admin.ModelAdmin):
    readonly_fields = ('uploaded_at',)
    list_display = ('__str__', 'image_url','uploaded_at')


admin.site.register(Image, ImageAdmin)