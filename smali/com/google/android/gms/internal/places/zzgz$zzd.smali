.class public Lcom/google/android/gms/internal/places/zzgz$zzd;
.super Lcom/google/android/gms/internal/places/zzgz$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzij;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/places/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/places/zzgz$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/places/zzgz$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/places/zzgz$zzb<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/places/zzij;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/places/zzgz$zze;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzgz$zzb;-><init>(Lcom/google/android/gms/internal/places/zzgz;)V

    return-void
.end method


# virtual methods
.method protected final zzdt()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    check-cast v1, Lcom/google/android/gms/internal/places/zzgz$zze;

    iget-object v1, v1, Lcom/google/android/gms/internal/places/zzgz$zze;->zzsm:Lcom/google/android/gms/internal/places/zzgq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgq;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/places/zzgq;

    iput-object v1, v0, Lcom/google/android/gms/internal/places/zzgz$zze;->zzsm:Lcom/google/android/gms/internal/places/zzgq;

    return-void
.end method

.method public final synthetic zzdu()Lcom/google/android/gms/internal/places/zzgz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdw()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zze;

    return-object v0
.end method

.method public final synthetic zzdw()Lcom/google/android/gms/internal/places/zzih;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zze;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzd;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/places/zzgz$zze;->zzsm:Lcom/google/android/gms/internal/places/zzgq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzgq;->zzbb()V

    invoke-super {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdu()Lcom/google/android/gms/internal/places/zzgz;

    move-result-object v0

    goto :goto_0
.end method
