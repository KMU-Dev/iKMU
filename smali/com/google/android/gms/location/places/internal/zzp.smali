.class public final Lcom/google/android/gms/location/places/internal/zzp;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/location/places/internal/zzu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgc:Lcom/google/android/gms/location/places/internal/zzat;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 10

    const/16 v3, 0x41

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    move-object v7, v0

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzat;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object/from16 v5, p6

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/location/places/internal/zzat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/location/places/internal/zzq;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/location/places/internal/zzp;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzu;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzu;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/places/internal/zzv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.GeoDataApi"

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zze;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzb(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzw;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zze;Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/location/places/internal/zzu;

    iget-object v6, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/location/places/internal/zzu;->zzb(Ljava/lang/String;IIILcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzw;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zzm;Lcom/google/android/gms/location/places/AddPlaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzb(Lcom/google/android/gms/location/places/AddPlaceRequest;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zzm;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 7
    .param p3    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/location/places/AutocompleteFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v1, p2

    if-nez p5, :cond_1

    new-instance p2, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->build()Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object p5

    :cond_1
    move-object v4, p5

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->getService()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzu;

    iget-object v5, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    move-object v2, p3

    move v3, p4

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/zzu;->zzb(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zzm;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/zzm;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzp;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzp;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzu;->zzb(Ljava/util/List;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V

    return-void
.end method
