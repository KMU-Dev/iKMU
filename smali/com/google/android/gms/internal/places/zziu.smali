.class final Lcom/google/android/gms/internal/places/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzif;


# instance fields
.field private final info:Ljava/lang/String;

.field private final zzvf:Lcom/google/android/gms/internal/places/zzih;

.field private final zzvy:Lcom/google/android/gms/internal/places/zziv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zziu;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/places/zziu;->info:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/places/zziv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/places/zziv;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    return-void
.end method


# virtual methods
.method public final getFieldCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zze(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method public final zzev()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzb(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zztd:I

    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzte:I

    return v0
.end method

.method public final zzew()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzb(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzex()Lcom/google/android/gms/internal/places/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    return-object v0
.end method

.method final zzfe()Lcom/google/android/gms/internal/places/zziv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    return-object v0
.end method

.method public final zzff()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzc(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method public final zzfg()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzd(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method public final zzfh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzf(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method public final zzfi()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzg(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method final zzfj()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzh(Lcom/google/android/gms/internal/places/zziv;)[I

    move-result-object v0

    return-object v0
.end method

.method public final zzfk()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzi(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method

.method public final zzfl()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziu;->zzvy:Lcom/google/android/gms/internal/places/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zziv;->zzj(Lcom/google/android/gms/internal/places/zziv;)I

    move-result v0

    return v0
.end method
