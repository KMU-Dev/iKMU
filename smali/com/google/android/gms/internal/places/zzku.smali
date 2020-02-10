.class public abstract Lcom/google/android/gms/internal/places/zzku;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzaap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzku;->zzaap:I

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/places/zzku;[B)Lcom/google/android/gms/internal/places/zzku;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzku;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/places/zzkt;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/places/zzku;->zzb(Lcom/google/android/gms/internal/places/zzku;[BII)Lcom/google/android/gms/internal/places/zzku;

    move-result-object p0

    return-object p0
.end method

.method private static final zzb(Lcom/google/android/gms/internal/places/zzku;[BII)Lcom/google/android/gms/internal/places/zzku;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzku;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/places/zzkt;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/places/zzkl;->zzk([BII)Lcom/google/android/gms/internal/places/zzkl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzku;->zzb(Lcom/google/android/gms/internal/places/zzkl;)Lcom/google/android/gms/internal/places/zzku;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/places/zzkl;->zzah(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/places/zzkt; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final zzd(Lcom/google/android/gms/internal/places/zzku;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzku;->zzdg()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/places/zzkm;->zzl([BII)Lcom/google/android/gms/internal/places/zzkm;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/places/zzku;->zzb(Lcom/google/android/gms/internal/places/zzkm;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzkm;->zzhd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzku;->zzhe()Lcom/google/android/gms/internal/places/zzku;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzkv;->zze(Lcom/google/android/gms/internal/places/zzku;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzal()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/places/zzkl;)Lcom/google/android/gms/internal/places/zzku;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zzb(Lcom/google/android/gms/internal/places/zzkm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zzdg()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzku;->zzal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzku;->zzaap:I

    return v0
.end method

.method public zzhe()Lcom/google/android/gms/internal/places/zzku;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzku;

    return-object v0
.end method
