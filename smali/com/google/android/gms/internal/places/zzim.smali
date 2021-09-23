.class final Lcom/google/android/gms/internal/places/zzim;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/places/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/places/zziy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzvf:Lcom/google/android/gms/internal/places/zzih;

.field private final zzvg:Z

.field private final zzvp:Lcom/google/android/gms/internal/places/zzjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/places/zzjq<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzvq:Lcom/google/android/gms/internal/places/zzgm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/places/zzgm<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/places/zzjq<",
            "**>;",
            "Lcom/google/android/gms/internal/places/zzgm<",
            "*>;",
            "Lcom/google/android/gms/internal/places/zzih;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/places/zzgm;->zzf(Lcom/google/android/gms/internal/places/zzih;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvg:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    iput-object p3, p0, Lcom/google/android/gms/internal/places/zzim;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzim;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/places/zzjq<",
            "**>;",
            "Lcom/google/android/gms/internal/places/zzgm<",
            "*>;",
            "Lcom/google/android/gms/internal/places/zzih;",
            ")",
            "Lcom/google/android/gms/internal/places/zzim<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/places/zzim;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/places/zzim;-><init>(Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzih;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/places/zzjq;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/places/zzgq;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzgq;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzih;->zzdr()Lcom/google/android/gms/internal/places/zzii;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzii;->zzdw()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/places/zzix;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object v3

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbg()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/places/zzjq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->getTag()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/places/zzim;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Lcom/google/android/gms/internal/places/zzgl;Lcom/google/android/gms/internal/places/zzih;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Lcom/google/android/gms/internal/places/zzix;Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzgl;Lcom/google/android/gms/internal/places/zzgq;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/places/zzjq;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;)Z

    move-result v4

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbh()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v4, v6

    const/4 v7, 0x0

    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbg()I

    move-result v8

    if-eq v8, v5, :cond_9

    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbq()I

    move-result v7

    iget-object v6, p0, Lcom/google/android/gms/internal/places/zzim;->zzvf:Lcom/google/android/gms/internal/places/zzih;

    invoke-virtual {v1, p3, v6, v7}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Lcom/google/android/gms/internal/places/zzgl;Lcom/google/android/gms/internal/places/zzih;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Lcom/google/android/gms/internal/places/zzix;Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzgl;Lcom/google/android/gms/internal/places/zzgq;)V

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v4

    goto :goto_0

    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->zzbh()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/places/zzix;->getTag()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v4, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {v1, v4, v6, p3, v3}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Lcom/google/android/gms/internal/places/zzfr;Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzgl;Lcom/google/android/gms/internal/places/zzgq;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2, v7, v4}, Lcom/google/android/gms/internal/places/zzjq;->zzb(Ljava/lang/Object;ILcom/google/android/gms/internal/places/zzfr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/places/zzjq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzec()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/places/zzjq;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzkk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/places/zzkk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzgq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/places/zzgs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzgs;->zzdj()Lcom/google/android/gms/internal/places/zzkj;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/places/zzkj;->zzzw:Lcom/google/android/gms/internal/places/zzkj;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzgs;->zzdk()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzgs;->zzdl()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/places/zzhm;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzgs;->zzap()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/places/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzhm;->zzej()Lcom/google/android/gms/internal/places/zzhk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzho;->zzax()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/places/zzkk;->zzb(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzgs;->zzap()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/places/zzjq;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzkk;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/places/zzja;->zzb(Lcom/google/android/gms/internal/places/zzjq;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/places/zzja;->zzb(Lcom/google/android/gms/internal/places/zzgm;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzn(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvp:Lcom/google/android/gms/internal/places/zzjq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzjq;->zzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/places/zzjq;->zzs(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzgq;->zzdh()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzo(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzim;->zzvq:Lcom/google/android/gms/internal/places/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zzgq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzgq;->isInitialized()Z

    move-result p1

    return p1
.end method
