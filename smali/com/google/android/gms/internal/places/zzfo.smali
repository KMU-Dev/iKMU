.class final Lcom/google/android/gms/internal/places/zzfo;
.super Lcom/google/android/gms/internal/places/zzfm;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private tag:I

.field private final zzno:Z

.field private final zznp:I

.field private zznq:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/places/zzfm;-><init>(Lcom/google/android/gms/internal/places/zzfn;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/places/zzfo;->zzno:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iput p2, p0, Lcom/google/android/gms/internal/places/zzfo;->zznp:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    return-void
.end method

.method private final readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0
.end method

.method private final zzaa(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
.end method

.method private final zzab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/places/zzke;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/places/zzfn;->zznn:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbv()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbu()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzfo;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbj()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbk()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzb(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhq;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzhq;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzhq;->zzd(Lcom/google/android/gms/internal/places/zzfr;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq p2, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method private final zzbf()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbw()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    sub-int/2addr v1, v2

    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzby()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_5

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v3, v1, 0x1c

    xor-int/2addr v0, v3

    const v3, 0xfe03f80

    xor-int/2addr v0, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzeb()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0

    :cond_7
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return v0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0
.end method

.method private final zzbx()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    if-eq v1, v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzby()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    move-wide v9, v0

    move v0, v3

    :goto_1
    move-wide v2, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    const-wide/32 v4, 0xfe03f80

    :goto_2
    xor-long/2addr v2, v4

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    const-wide v0, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v2, v0

    :goto_4
    move v0, v6

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    const-wide v4, 0x3f80fe03f80L

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v7, v0, v4

    if-ltz v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzeb()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0

    :cond_a
    :goto_5
    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-wide v2

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0
.end method

.method private final zzby()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzeb()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0
.end method

.method private final zzbz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    return v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/places/zziy;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    throw p1
.end method

.method private final zzc(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/places/zzjy;->zzh([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzeg()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    sget-object v3, Lcom/google/android/gms/internal/places/zzhb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-object p1
.end method

.method private final zzca()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzcb()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzcc()J
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/places/zziy;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    throw p1
.end method

.method private final zzw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method private final zzx(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
.end method

.method private final zzy(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method private final zzz(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzca()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzb(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzis;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/Map;Lcom/google/android/gms/internal/places/zzia;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/places/zzia<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/places/zzia;->zzuu:Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/places/zzia;->zzss:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbg()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbh()Z

    move-result v3

    goto :goto_1

    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/places/zzia;->zzuv:Lcom/google/android/gms/internal/places/zzke;

    iget-object v4, p2, Lcom/google/android/gms/internal/places/zzia;->zzss:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/places/zzfo;->zzb(Lcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/places/zzia;->zzut:Lcom/google/android/gms/internal/places/zzke;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Lcom/google/android/gms/internal/places/zzfo;->zzb(Lcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/places/zzhh;

    const-string v4, "Unable to parse map entry."

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/places/zzhi; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbh()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/places/zzhh;

    const-string p2, "Unable to parse map entry."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    return-void

    :catchall_0
    move-exception p1

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzbg()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final zzbh()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object v0

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbg()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbh()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    if-ne v1, v2, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->zznq:I

    return v4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzw(I)V

    return v4

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    sub-int/2addr v0, v2

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    move v5, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    if-ltz v5, :cond_4

    iput v6, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_1

    :cond_5
    :goto_2
    if-ge v1, v2, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->readByte()B

    move-result v0

    if-gez v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v4

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzeb()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object v0

    throw v0

    :cond_8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/places/zzfo;->zzw(I)V

    return v4

    :cond_9
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzbi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbk()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    return v0
.end method

.method public final zzbl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzca()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbm()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbz()I

    move-result v0

    return v0
.end method

.method public final zzbn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzbo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzc(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbp()Lcom/google/android/gms/internal/places/zzfr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/places/zzfr;->zznt:Lcom/google/android/gms/internal/places/zzfr;

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzx(I)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/places/zzfo;->zzno:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/places/zzfr;->zzd([BII)Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfo;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/places/zzfr;->zzc([BII)Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-object v1
.end method

.method public final zzbq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    return v0
.end method

.method public final zzbr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    return v0
.end method

.method public final zzbs()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbz()I

    move-result v0

    return v0
.end method

.method public final zzbt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzca()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbu()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzga;->zzan(I)I

    move-result v0

    return v0
.end method

.method public final zzbv()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/places/zzga;->zzd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzis;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfo;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/util/List;Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzfo;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzy(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzfo;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzgi;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/places/zzgi;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzgi;->zzd(D)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzgi;->zzd(D)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzgw;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/places/zzgw;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzgw;->zzf(F)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzgw;->zzf(F)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzhv;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzhv;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbj()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhv;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/places/zzhv;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/places/zzha;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzfp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzfp;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v3, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v3, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzfp;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbn()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzfp;->addBoolean(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v3, v0

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v3, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/places/zzfo;->zzab(I)V

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_9

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzb(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/places/zzfr;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/places/zzha;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbs()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzaa(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzr(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhv;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/places/zzhv;

    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzfo;->zzz(I)V

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzcc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzha;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzga;->zzan(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbu()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzga;->zzan(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method

.method public final zzt(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhv;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzhv;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/places/zzga;->zzd(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbx()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/places/zzga;->zzd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbv()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfo;->zzbw()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/places/zzfo;->tag:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzfo;->pos:I

    return-void
.end method
