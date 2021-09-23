.class public abstract Lcom/google/android/gms/internal/places/zzfr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zznt:Lcom/google/android/gms/internal/places/zzfr;

.field private static final zznu:Lcom/google/android/gms/internal/places/zzfv;


# instance fields
.field private zznv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzfy;

    sget-object v1, Lcom/google/android/gms/internal/places/zzhb;->zztl:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzfy;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzfr;->zznt:Lcom/google/android/gms/internal/places/zzfr;

    invoke-static {}, Lcom/google/android/gms/internal/places/zzfl;->zzbd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/places/zzfz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzfz;-><init>(Lcom/google/android/gms/internal/places/zzfs;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/places/zzft;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzft;-><init>(Lcom/google/android/gms/internal/places/zzfs;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/places/zzfr;->zznu:Lcom/google/android/gms/internal/places/zzfv;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfr;->zznv:I

    return-void
.end method

.method static zzag(I)Lcom/google/android/gms/internal/places/zzfw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzfw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/places/zzfw;-><init>(ILcom/google/android/gms/internal/places/zzfs;)V

    return-object v0
.end method

.method static zzc(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method static zzc([B)Lcom/google/android/gms/internal/places/zzfr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/places/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzfy;-><init>([B)V

    return-object v0
.end method

.method public static zzc([BII)Lcom/google/android/gms/internal/places/zzfr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzfy;

    sget-object v1, Lcom/google/android/gms/internal/places/zzfr;->zznu:Lcom/google/android/gms/internal/places/zzfv;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfv;->zze([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzfy;-><init>([B)V

    return-object v0
.end method

.method static zzd([BII)Lcom/google/android/gms/internal/places/zzfr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/places/zzfu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfu;-><init>([BII)V

    return-object v0
.end method

.method public static zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/places/zzfr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/places/zzfy;

    sget-object v1, Lcom/google/android/gms/internal/places/zzhb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzfy;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfr;->zznv:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/places/zzfr;->zzb(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/places/zzfr;->zznv:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/places/zzfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzfs;-><init>(Lcom/google/android/gms/internal/places/zzfr;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzaf(I)B
.end method

.method protected abstract zzb(III)I
.end method

.method protected abstract zzb(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zzb(Lcom/google/android/gms/internal/places/zzfq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zzb([BIII)V
.end method

.method public abstract zzc(II)Lcom/google/android/gms/internal/places/zzfr;
.end method

.method public final zzcd()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/places/zzhb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/places/zzfr;->zzb(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzce()Z
.end method

.method protected final zzcf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfr;->zznv:I

    return v0
.end method
