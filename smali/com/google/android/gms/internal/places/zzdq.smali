.class public final Lcom/google/android/gms/internal/places/zzdq;
.super Lcom/google/android/gms/internal/places/zzko;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/places/zzko<",
        "Lcom/google/android/gms/internal/places/zzdq;",
        ">;"
    }
.end annotation


# instance fields
.field public zzhw:[Ljava/lang/String;

.field public zzhx:[I

.field public zzhy:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzko;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/places/zzkx;->zzaaz:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/places/zzkx;->zzaau:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    sget-object v0, Lcom/google/android/gms/internal/places/zzkx;->zzaba:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaap:I

    return-void
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/places/zzdq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/places/zzkt;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/places/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/places/zzdq;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/places/zzku;->zzb(Lcom/google/android/gms/internal/places/zzku;[B)Lcom/google/android/gms/internal/places/zzku;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/places/zzdq;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/places/zzdq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/places/zzdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/places/zzks;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/places/zzks;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/places/zzks;->zzb([[B[[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzkq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    iget-object p1, p1, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzkq;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkq;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/places/zzks;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/places/zzks;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/places/zzks;->zzb([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzkq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzaaf:Lcom/google/android/gms/internal/places/zzkq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzkq;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method protected final zzal()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/places/zzko;->zzal()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/places/zzkm;->zzl(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/places/zzkm;->zzat(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/places/zzkm;->zzj([B)I

    move-result v4

    add-int/2addr v1, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :cond_7
    return v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/places/zzkl;)Lcom/google/android/gms/internal/places/zzku;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcj()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzko;->zzb(Lcom/google/android/gms/internal/places/zzkl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/places/zzkx;->zzc(Lcom/google/android/gms/internal/places/zzkl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [[B

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcj()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzkl;->zzak(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzhb()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcm()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/places/zzkl;->zzbr(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v1, v1

    :goto_4
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    array-length v2, v3

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcm()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iput-object v3, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/places/zzkl;->zzal(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/places/zzkx;->zzc(Lcom/google/android/gms/internal/places/zzkl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v1, v1

    :goto_6
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcm()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcj()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcm()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    goto/16 :goto_0

    :cond_e
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/places/zzkx;->zzc(Lcom/google/android/gms/internal/places/zzkl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->zzcj()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzkl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/places/zzkm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhw:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/places/zzkm;->zzb(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhx:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/places/zzkm;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdq;->zzhy:[[B

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/places/zzkm;->zzb(I[B)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/places/zzko;->zzb(Lcom/google/android/gms/internal/places/zzkm;)V

    return-void
.end method
