from rest_framework  import serializers
from .models import ProductsList, ProductImages

class ProductImagesSerializer(serializers.ModelSerializer):
    class Meta:
        model=ProductImages
        fields=[
            "Image"
        ]

class ProductsListSerializer(serializers.ModelSerializer):
    images= ProductImagesSerializer(many= True)

    class Meta:
        model= ProductsList
        fields=[
            "id",
            "Name",
            "images"
        ]
        #fields=

class AddProductsListSerializer(serializers.ModelSerializer):
    images= ProductImagesSerializer(many= True)

    class Meta:
        model= ProductsList
        fields=[
            "id",
            "Name",
            "images",
            "unit_price",
            "content",
            "quantity"

        ]
        #fields=