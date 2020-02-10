.class public Lcom/google/android/gms/location/places/PlaceLikelihoodBufferResponse;
.super Lcom/google/android/gms/common/api/DataBufferResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/DataBufferResponse<",
        "Lcom/google/android/gms/location/places/PlaceLikelihood;",
        "Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/DataBufferResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributions()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBufferResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->getAttributions()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBufferResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
