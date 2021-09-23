.class final Lcom/google/android/gms/location/places/internal/zzk;
.super Lcom/google/android/gms/location/places/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzg<",
        "Lcom/google/android/gms/location/places/internal/zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzft:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzi;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzft:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzg;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzp;

    new-instance v0, Lcom/google/android/gms/location/places/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zze;-><init>(Lcom/google/android/gms/location/places/zzg;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzft:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/zze;Ljava/lang/String;)V

    return-void
.end method
