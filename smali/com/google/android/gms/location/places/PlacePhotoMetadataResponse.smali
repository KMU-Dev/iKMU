.class public Lcom/google/android/gms/location/places/PlacePhotoMetadataResponse;
.super Lcom/google/android/gms/common/api/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Response<",
        "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoMetadata()Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlacePhotoMetadataResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->getPhotoMetadata()Lcom/google/android/gms/location/places/PlacePhotoMetadataBuffer;

    move-result-object v0

    return-object v0
.end method
