.class final Lcom/google/android/gms/internal/places/zzgd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzix;


# instance fields
.field private tag:I

.field private zznq:I

.field private final zzom:Lcom/google/android/gms/internal/places/zzga;

.field private zzon:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/places/zzga;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/places/zzhb;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/places/zzga;

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iput-object p0, p1, Lcom/google/android/gms/internal/places/zzga;->zzoe:Lcom/google/android/gms/internal/places/zzgd;

    return-void
.end method

.method private static zzaa(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p0

    throw p0
.end method

.method private final zzab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzdz()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/places/zzga;)Lcom/google/android/gms/internal/places/zzgd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzga;->zzoe:Lcom/google/android/gms/internal/places/zzgd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/places/zzga;->zzoe:Lcom/google/android/gms/internal/places/zzgd;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/places/zzgd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzgd;-><init>(Lcom/google/android/gms/internal/places/zzga;)V

    return-object v0
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

    sget-object v0, Lcom/google/android/gms/internal/places/zzge;->zznn:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbv()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbu()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbj()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbk()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

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
    .locals 2
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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzhq;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzhq;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzhq;->zzd(Lcom/google/android/gms/internal/places/zzfr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget v1, v1, Lcom/google/android/gms/internal/places/zzga;->zzob:I

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget v2, v2, Lcom/google/android/gms/internal/places/zzga;->zzoc:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/places/zzga;->zzak(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/places/zziy;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget v3, v2, Lcom/google/android/gms/internal/places/zzga;->zzob:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/places/zzga;->zzob:I

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/places/zzga;->zzah(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget p2, p1, Lcom/google/android/gms/internal/places/zzga;->zzob:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/places/zzga;->zzob:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzga;->zzal(I)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzee()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p1

    throw p1
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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/places/zziy;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

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

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

    throw p1
.end method

.method private final zzy(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method private static zzz(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzef()Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readDouble()D

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readFloat()F

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

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readString()Ljava/lang/String;

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

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Ljava/util/List;Z)V

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgd;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzis;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgd;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 2
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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzgd;->zzc(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    :cond_2
    :goto_0
    return-void

    :cond_3
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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/places/zzga;->zzak(I)I

    move-result v0

    iget-object v1, p2, Lcom/google/android/gms/internal/places/zzia;->zzuu:Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/places/zzia;->zzss:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbg()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    packed-switch v3, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbh()Z

    move-result v3

    goto :goto_1

    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/places/zzia;->zzuv:Lcom/google/android/gms/internal/places/zzke;

    iget-object v4, p2, Lcom/google/android/gms/internal/places/zzia;->zzss:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Lcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/places/zzia;->zzut:Lcom/google/android/gms/internal/places/zzke;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Lcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbh()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/places/zzhh;

    const-string p2, "Unable to parse map entry."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzga;->zzal(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/places/zzga;->zzal(I)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzbg()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzbh()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zznq:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/places/zzga;->zzai(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbi()J

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbj()J

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbk()I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbl()J

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbm()I

    move-result v0

    return v0
.end method

.method public final zzbn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbn()Z

    move-result v0

    return v0
.end method

.method public final zzbo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbp()Lcom/google/android/gms/internal/places/zzfr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final zzbq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbr()I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbs()I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbt()J

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbu()I

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbv()J

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzis;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgd;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/util/List;Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)V
    .locals 2
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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/places/zzgd;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    :cond_2
    :goto_0
    return-void

    :cond_3
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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzy(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/places/zzgd;->zze(Lcom/google/android/gms/internal/places/zziy;Lcom/google/android/gms/internal/places/zzgl;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzgi;->zzd(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzgi;->zzd(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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
    .locals 4
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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzgw;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgw;->zzf(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzgw;->zzf(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_a

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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbi()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbj()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbj()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 2
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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbl()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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
    .locals 4
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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzfp;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbn()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzfp;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbn()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzfp;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 2
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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgd;->zzbp()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 2
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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
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

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/places/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbs()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbs()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_a

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

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbt()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/places/zzgd;->zzz(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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
    .locals 2
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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbu()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbu()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzha;->zzbe(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbu()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

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

    iget p1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbv()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzhv;->zzp(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcl()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/places/zzgd;->zzab(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/places/zzhh;->zzed()Lcom/google/android/gms/internal/places/zzhi;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbv()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzbf()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzom:Lcom/google/android/gms/internal/places/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzga;->zzcj()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/places/zzgd;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgd;->zzon:I

    return-void
.end method
