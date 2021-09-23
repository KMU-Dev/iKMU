.class public final Lcom/google/android/gms/location/places/zze;
.super Lcom/google/android/gms/location/places/internal/zzx;


# instance fields
.field private final zzdx:Lcom/google/android/gms/location/places/zzg;

.field private final zzdy:Lcom/google/android/gms/location/places/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/zzf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzx;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zze;->zzdx:Lcom/google/android/gms/location/places/zzg;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zze;->zzdy:Lcom/google/android/gms/location/places/zzf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/zze;->zzdx:Lcom/google/android/gms/location/places/zzg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/places/zze;->zzdy:Lcom/google/android/gms/location/places/zzf;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zze;->zzdx:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/PlacePhotoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zze;->zzdy:Lcom/google/android/gms/location/places/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzf;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
