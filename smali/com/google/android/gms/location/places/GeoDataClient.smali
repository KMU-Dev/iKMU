.class public Lcom/google/android/gms/location/places/GeoDataClient;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/GeoDataClient$BoundsMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/location/places/PlacesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/location/places/PlacesOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/location/places/PlacesOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-void
.end method


# virtual methods
.method public addPlace(Lcom/google/android/gms/location/places/AddPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/gms/location/places/AddPlaceRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/AddPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/PlaceBufferResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/GeoDataClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/places/GeoDataApi;->addPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/AddPlaceRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/location/places/PlaceBufferResponse;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlaceBufferResponse;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toResponseTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAutocompletePredictions(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/location/places/AutocompleteFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "I",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/AutocompletePredictionBufferResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/location/places/internal/zzi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/GeoDataClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/places/internal/zzi;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/location/places/AutocompletePredictionBufferResponse;

    invoke-direct {p2}, Lcom/google/android/gms/location/places/AutocompletePredictionBufferResponse;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toResponseTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAutocompletePredictions(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/location/places/AutocompleteFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/AutocompletePredictionBufferResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/location/places/GeoDataClient;->getAutocompletePredictions(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getPhoto(Lcom/google/android/gms/location/places/PlacePhotoMetadata;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/gms/location/places/PlacePhotoMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/PlacePhotoResponse;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/location/places/PlacePhotoMetadata;->getMaxWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/location/places/PlacePhotoMetadata;->getMaxHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/location/places/GeoDataClient;->getScaledPhoto(Lcom/google/android/gms/location/places/PlacePhotoMetadata;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public varargs getPlaceById([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/PlaceBufferResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/GeoDataClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/places/GeoDataApi;->getPlaceById(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/location/places/PlaceBufferResponse;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlaceBufferResponse;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toResponseTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getPlacePhotos(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadataResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/GeoDataClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/places/GeoDataApi;->getPlacePhotos(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResponse;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlacePhotoMetadataResponse;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toResponseTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getScaledPhoto(Lcom/google/android/gms/location/places/PlacePhotoMetadata;II)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/gms/location/places/PlacePhotoMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadata;",
            "II)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/places/PlacePhotoResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/GeoDataClient;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/location/places/internal/zzi;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlacePhotoMetadata;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/location/places/PlacePhotoResponse;

    invoke-direct {p2}, Lcom/google/android/gms/location/places/PlacePhotoResponse;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toResponseTask(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
