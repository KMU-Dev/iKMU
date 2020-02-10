.class public final Lcom/google/android/gms/internal/places/zzgz$zzc;
.super Lcom/google/android/gms/internal/places/zzfj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/places/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/places/zzgz<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/places/zzfj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzsj:Lcom/google/android/gms/internal/places/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/places/zzgz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzgz$zzc;->zzsj:Lcom/google/android/gms/internal/places/zzgz;

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/internal/places/zzga;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/places/zzhh;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzc;->zzsj:Lcom/google/android/gms/internal/places/zzgz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/places/zzgz;->zzb(Lcom/google/android/gms/internal/places/zzgz;Lcom/google/android/gms/internal/places/zzga;Lcom/google/android/gms/internal/places/zzgl;)Lcom/google/android/gms/internal/places/zzgz;

    move-result-object p1

    return-object p1
.end method
