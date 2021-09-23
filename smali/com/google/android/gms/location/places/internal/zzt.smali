.class public final Lcom/google/android/gms/location/places/internal/zzt;
.super Lcom/google/android/gms/internal/places/zzb;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzs;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzb;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/zzat;Lcom/google/android/gms/location/places/internal/zzy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/places/zzd;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzb;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method
