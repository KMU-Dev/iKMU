.class final Lcom/google/android/gms/internal/places/zzhw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/places/zziz;


# static fields
.field private static final zzur:Lcom/google/android/gms/internal/places/zzig;


# instance fields
.field private final zzuq:Lcom/google/android/gms/internal/places/zzig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/places/zzhx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/places/zzhx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/places/zzhw;->zzur:Lcom/google/android/gms/internal/places/zzig;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/places/zzhy;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/places/zzig;

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgy;->zzdn()Lcom/google/android/gms/internal/places/zzgy;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhw;->zzeo()Lcom/google/android/gms/internal/places/zzig;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzhy;-><init>([Lcom/google/android/gms/internal/places/zzig;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/places/zzhw;-><init>(Lcom/google/android/gms/internal/places/zzig;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/places/zzig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/places/zzhb;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/places/zzig;

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzhw;->zzuq:Lcom/google/android/gms/internal/places/zzig;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/places/zzif;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/places/zzif;->zzev()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zztd:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzeo()Lcom/google/android/gms/internal/places/zzig;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/places/zzhw;->zzur:Lcom/google/android/gms/internal/places/zzig;

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/places/zziy<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzja;->zzh(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzhw;->zzuq:Lcom/google/android/gms/internal/places/zzig;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzig;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zzif;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzif;->zzew()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/places/zzgz;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgd()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgp;->zzdd()Lcom/google/android/gms/internal/places/zzgm;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzif;->zzex()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzim;->zzb(Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzim;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgb()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgp;->zzde()Lcom/google/android/gms/internal/places/zzgm;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/places/zzif;->zzex()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzim;->zzb(Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzim;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/places/zzgz;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/places/zzhw;->zzb(Lcom/google/android/gms/internal/places/zzif;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/places/zziq;->zzfa()Lcom/google/android/gms/internal/places/zzio;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhr;->zzen()Lcom/google/android/gms/internal/places/zzhr;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgd()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgp;->zzdd()Lcom/google/android/gms/internal/places/zzgm;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/places/zzie;->zzet()Lcom/google/android/gms/internal/places/zzic;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/places/zzil;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzif;Lcom/google/android/gms/internal/places/zzio;Lcom/google/android/gms/internal/places/zzhr;Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzic;)Lcom/google/android/gms/internal/places/zzil;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/places/zziq;->zzfa()Lcom/google/android/gms/internal/places/zzio;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhr;->zzen()Lcom/google/android/gms/internal/places/zzhr;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgd()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzie;->zzet()Lcom/google/android/gms/internal/places/zzic;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/places/zzil;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzif;Lcom/google/android/gms/internal/places/zzio;Lcom/google/android/gms/internal/places/zzhr;Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzic;)Lcom/google/android/gms/internal/places/zzil;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/places/zzhw;->zzb(Lcom/google/android/gms/internal/places/zzif;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/places/zziq;->zzez()Lcom/google/android/gms/internal/places/zzio;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhr;->zzem()Lcom/google/android/gms/internal/places/zzhr;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgb()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgp;->zzde()Lcom/google/android/gms/internal/places/zzgm;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/places/zzie;->zzes()Lcom/google/android/gms/internal/places/zzic;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/places/zzil;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzif;Lcom/google/android/gms/internal/places/zzio;Lcom/google/android/gms/internal/places/zzhr;Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzic;)Lcom/google/android/gms/internal/places/zzil;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/places/zziq;->zzez()Lcom/google/android/gms/internal/places/zzio;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/places/zzhr;->zzem()Lcom/google/android/gms/internal/places/zzhr;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/places/zzja;->zzgc()Lcom/google/android/gms/internal/places/zzjq;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzie;->zzes()Lcom/google/android/gms/internal/places/zzic;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/places/zzil;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzif;Lcom/google/android/gms/internal/places/zzio;Lcom/google/android/gms/internal/places/zzhr;Lcom/google/android/gms/internal/places/zzjq;Lcom/google/android/gms/internal/places/zzgm;Lcom/google/android/gms/internal/places/zzic;)Lcom/google/android/gms/internal/places/zzil;

    move-result-object p1

    return-object p1
.end method
