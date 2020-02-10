.class public abstract Lcom/google/android/gms/internal/places/zzgf;
.super Lcom/google/android/gms/internal/places/zzfq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/places/zzgf$zzf;,
        Lcom/google/android/gms/internal/places/zzgf$zze;,
        Lcom/google/android/gms/internal/places/zzgf$zzc;,
        Lcom/google/android/gms/internal/places/zzgf$zzb;,
        Lcom/google/android/gms/internal/places/zzgf$zzd;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzoo:Z


# instance fields
.field zzop:Lcom/google/android/gms/internal/places/zzgh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/places/zzgf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/places/zzgf;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/places/zzjw;->zzgs()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/places/zzgf;->zzoo:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/places/zzgg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzgf;-><init>()V

    return-void
.end method

.method public static zzas(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    return p0
.end method

.method public static zzat(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzau(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzav(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzaz(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    return p0
.end method

.method public static zzaw(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzax(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzay(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzat(I)I

    move-result p0

    return p0
.end method

.method private static zzaz(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/places/zzho;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzho;->zzdg()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/places/zzho;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzho;->zzdg()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/places/zzgf;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/places/zzgf$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzgf$zzc;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/places/zzjw;->zzgt()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/places/zzgf$zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzgf$zzf;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/places/zzgf$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzgf$zze;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzba(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    return p0
.end method

.method public static zzc(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/places/zzho;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/places/zzgf;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzb(ILcom/google/android/gms/internal/places/zzho;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzc(ILcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzc(Lcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzl(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/places/zzfr;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzc(Lcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)I
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/places/zzfh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfh;->zzay()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/places/zziy;->zzn(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/places/zzfh;->zzv(I)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method static synthetic zzct()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/places/zzgf;->zzoo:Z

    return v0
.end method

.method public static zzd(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/places/zzfr;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/places/zzih;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzd(Lcom/google/android/gms/internal/places/zzih;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzd(ILcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/places/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzfh;->zzay()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/places/zziy;->zzn(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzfh;->zzv(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/places/zzih;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/places/zzih;->zzdg()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd([B)Lcom/google/android/gms/internal/places/zzgf;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/places/zzgf$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/places/zzgf$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zze(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzi(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(ILcom/google/android/gms/internal/places/zzfr;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/places/zzgf;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzd(ILcom/google/android/gms/internal/places/zzfr;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zze(ILcom/google/android/gms/internal/places/zzih;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/places/zzgf;->zzj(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzd(ILcom/google/android/gms/internal/places/zzih;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zze(Lcom/google/android/gms/internal/places/zzih;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/places/zzih;->zzdg()I

    move-result p0

    return p0
.end method

.method public static zze(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zze([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzf(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzi(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzm(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzi(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzi(J)I

    move-result p0

    return p0
.end method

.method public static zzi(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzat(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzi(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzi(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static zzj(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzj(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzm(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzi(J)I

    move-result p0

    return p0
.end method

.method public static zzk(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzaz(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzk(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzl(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzl(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzl(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzjy;->zzb(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/places/zzkb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/places/zzhb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzau(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzm(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static zzm(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzn(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzgf;->zzas(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzat(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzao(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzap(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzaq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzaz(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzap(I)V

    return-void
.end method

.method public abstract zzar(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzg(J)V

    return-void
.end method

.method public final zzb(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/places/zzgf;->zzd(IJ)V

    return-void
.end method

.method public abstract zzb(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/places/zzfr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/places/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzb(ILcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/places/zzfr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzb(Lcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zziy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/places/zzkb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/places/zzgf;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/places/zzhb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzap(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/places/zzfq;->zzb([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/places/zzgf$zzd; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/places/zzgf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/places/zzgf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzc(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzh(II)V

    return-void
.end method

.method public final zzc(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/places/zzgf;->zzm(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/places/zzgf;->zzb(IJ)V

    return-void
.end method

.method public abstract zzc(ILcom/google/android/gms/internal/places/zzfr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(ILcom/google/android/gms/internal/places/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/places/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcs()I
.end method

.method public final zzd(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzar(I)V

    return-void
.end method

.method public abstract zzd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzgf;->zzb(B)V

    return-void
.end method

.method public abstract zze(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zze(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzf(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzm(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zze(J)V

    return-void
.end method

.method public final zzg(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/places/zzgf;->zzaz(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgf;->zzf(II)V

    return-void
.end method

.method public abstract zzg(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzg([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
