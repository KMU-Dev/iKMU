.class public Lcom/google/android/gms/internal/places/zzgz$zzb;
.super Lcom/google/android/gms/internal/places/zzfi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/places/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/places/zzgz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/places/zzgz$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/places/zzfi<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzsj:Lcom/google/android/gms/internal/places/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzsk:Lcom/google/android/gms/internal/places/zzgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzsl:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/places/zzgz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsj:Lcom/google/android/gms/internal/places/zzgz;

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/places/zzgz;

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsl:Z

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/places/zzgz;Lcom/google/android/gms/internal/places/zzgz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsj:Lcom/google/android/gms/internal/places/zzgz;

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    sget v1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsz:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdw()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/places/zzgz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzb(Lcom/google/android/gms/internal/places/zzgz;)Lcom/google/android/gms/internal/places/zzgz$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(Lcom/google/android/gms/internal/places/zzgz;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzaz()Lcom/google/android/gms/internal/places/zzfi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzfi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zzb;

    return-object v0
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/internal/places/zzfh;)Lcom/google/android/gms/internal/places/zzfi;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/places/zzgz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzb(Lcom/google/android/gms/internal/places/zzgz;)Lcom/google/android/gms/internal/places/zzgz$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/places/zzgz;)Lcom/google/android/gms/internal/places/zzgz$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzb(Lcom/google/android/gms/internal/places/zzgz;Lcom/google/android/gms/internal/places/zzgz;)V

    return-object p0
.end method

.method public final synthetic zzds()Lcom/google/android/gms/internal/places/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsj:Lcom/google/android/gms/internal/places/zzgz;

    return-object v0
.end method

.method protected zzdt()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    sget v1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsy:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzb(Lcom/google/android/gms/internal/places/zzgz;Lcom/google/android/gms/internal/places/zzgz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsl:Z

    :cond_0
    return-void
.end method

.method public zzdu()Lcom/google/android/gms/internal/places/zzgz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzsk:Lcom/google/android/gms/internal/places/zzgz;

    return-object v0
.end method

.method public final zzdv()Lcom/google/android/gms/internal/places/zzgz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdw()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsv:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/places/zziy;->zzo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsw:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/places/zzjp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/places/zzjp;-><init>(Lcom/google/android/gms/internal/places/zzih;)V

    throw v1
.end method

.method public synthetic zzdw()Lcom/google/android/gms/internal/places/zzih;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdu()Lcom/google/android/gms/internal/places/zzgz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzdx()Lcom/google/android/gms/internal/places/zzih;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzdw()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsv:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/places/zziy;->zzo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsw:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/places/zzjp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/places/zzjp;-><init>(Lcom/google/android/gms/internal/places/zzih;)V

    throw v1
.end method
