.class final Lcom/google/android/gms/location/places/internal/zzo;
.super Lcom/google/android/gms/location/places/zzm$zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzm$zzb<",
        "Lcom/google/android/gms/location/places/internal/zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$query:Ljava/lang/String;

.field private final synthetic zzfz:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final synthetic zzgb:Lcom/google/android/gms/location/places/AutocompleteFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzi;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzo;->val$query:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzfz:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzgb:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzm$zzb;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzp;

    new-instance v1, Lcom/google/android/gms/location/places/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzm;-><init>(Lcom/google/android/gms/location/places/zzm$zzb;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzo;->val$query:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzfz:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v5, p0, Lcom/google/android/gms/location/places/internal/zzo;->zzgb:Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/zzm;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
