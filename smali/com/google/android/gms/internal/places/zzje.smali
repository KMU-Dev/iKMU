.class final Lcom/google/android/gms/internal/places/zzje;
.super Lcom/google/android/gms/internal/places/zzjk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/places/zzjk;"
    }
.end annotation


# instance fields
.field private final synthetic zzxk:Lcom/google/android/gms/internal/places/zzjb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/places/zzjb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzje;->zzxk:Lcom/google/android/gms/internal/places/zzjb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzjk;-><init>(Lcom/google/android/gms/internal/places/zzjb;Lcom/google/android/gms/internal/places/zzjc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/places/zzjb;Lcom/google/android/gms/internal/places/zzjc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzje;-><init>(Lcom/google/android/gms/internal/places/zzjb;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/places/zzjd;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzje;->zzxk:Lcom/google/android/gms/internal/places/zzjb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzjd;-><init>(Lcom/google/android/gms/internal/places/zzjb;Lcom/google/android/gms/internal/places/zzjc;)V

    return-object v0
.end method
