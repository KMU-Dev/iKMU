.class final Lcom/google/android/gms/internal/places/zzip;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzio;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/places/zzgz;

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
