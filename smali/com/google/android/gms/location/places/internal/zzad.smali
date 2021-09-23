.class public final Lcom/google/android/gms/location/places/internal/zzad;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/location/places/internal/zzs;",
        ">;"
    }
.end annotation


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final zzgc:Lcom/google/android/gms/location/places/internal/zzat;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzad;->locale:Ljava/util/Locale;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    new-instance p1, Lcom/google/android/gms/location/places/internal/zzat;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzad;->locale:Ljava/util/Locale;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzad;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/location/places/internal/zzae;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/location/places/internal/zzad;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzs;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/places/internal/zzt;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.PlaceDetectionApi"

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zzm;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/location/places/PlaceFilter;
        .annotation runtime Ljavax/annotation/Nullable;
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

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->zzz()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzad;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzs;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzad;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzs;->zzb(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/zzm;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzad;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzs;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzad;->zzgc:Lcom/google/android/gms/location/places/internal/zzat;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzs;->zzb(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V

    return-void
.end method
