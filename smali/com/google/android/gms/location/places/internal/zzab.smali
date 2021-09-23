.class final Lcom/google/android/gms/location/places/internal/zzab;
.super Lcom/google/android/gms/location/places/zzm$zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzm$zze<",
        "Lcom/google/android/gms/location/places/internal/zzad;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgd:Lcom/google/android/gms/location/places/PlaceFilter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzaa;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzab;->zzgd:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzm$zze;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzad;

    new-instance v0, Lcom/google/android/gms/location/places/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzm;-><init>(Lcom/google/android/gms/location/places/zzm$zze;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzab;->zzgd:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzad;->zzb(Lcom/google/android/gms/location/places/zzm;Lcom/google/android/gms/location/places/PlaceFilter;)V

    return-void
.end method
