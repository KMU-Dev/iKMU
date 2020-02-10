.class final Lcom/google/android/gms/location/places/internal/zzl;
.super Lcom/google/android/gms/location/places/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzf<",
        "Lcom/google/android/gms/location/places/internal/zzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfu:Ljava/lang/String;

.field private final synthetic zzfv:I

.field private final synthetic zzfw:I

.field private final synthetic zzfx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzi;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfu:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfv:I

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfw:I

    iput p7, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfx:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/location/places/zze;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zze;-><init>(Lcom/google/android/gms/location/places/zzf;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfu:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfv:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfw:I

    iget v5, p0, Lcom/google/android/gms/location/places/internal/zzl;->zzfx:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/zze;Ljava/lang/String;III)V

    return-void
.end method
