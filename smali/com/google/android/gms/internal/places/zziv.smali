.class final Lcom/google/android/gms/internal/places/zziv;
.super Ljava/lang/Object;


# instance fields
.field private final flags:I

.field private final zzvb:[Ljava/lang/Object;

.field private final zzvc:I

.field private final zzvd:I

.field private final zzve:I

.field private final zzvk:[I

.field private final zzvz:Lcom/google/android/gms/internal/places/zziw;

.field private zzwa:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzwb:I

.field private final zzwc:I

.field private final zzwd:I

.field private final zzwe:I

.field private final zzwf:I

.field private final zzwg:I

.field private zzwh:I

.field private zzwi:I

.field private zzwj:I

.field private zzwk:I

.field private zzwl:I

.field private zzwm:I

.field private zzwn:I

.field private zzwo:I

.field private zzwp:I

.field private zzwq:I

.field private zzwr:I

.field private zzws:I

.field private zzwt:I

.field private zzwu:I

.field private zzwv:Ljava/lang/reflect/Field;

.field private zzww:Ljava/lang/Object;

.field private zzwx:Ljava/lang/Object;

.field private zzwy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwj:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwl:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwm:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwn:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwo:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwp:I

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwa:Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/places/zziw;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/places/zziw;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    iput-object p3, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->flags:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwb:I

    iget p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwb:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwc:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwd:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvc:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvd:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwe:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwf:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzve:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwg:I

    iput-object p2, p0, Lcom/google/android/gms/internal/places/zziv;->zzvk:[I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwd:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvd:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzve:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwe:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwg:I

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, p1, [I

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/places/zziv;->zzvk:[I

    iget p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwc:I

    shl-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwd:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwh:I

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->flags:I

    return p0
.end method

.method private static zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvc:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvd:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwb:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwe:I

    return p0
.end method

.method private final zzfm()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwh:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final zzfo()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwg:I

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/places/zziv;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvk:[I

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwf:I

    return p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/places/zziv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/places/zziv;->zzve:I

    return p0
.end method


# virtual methods
.method final next()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zziw;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwj:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwj:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwk:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwk:I

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzrm:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwl:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwl:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzqg:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzrl:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-gt v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwm:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwm:I

    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwp:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwj:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    iget v4, p0, Lcom/google/android/gms/internal/places/zziv;->zzwp:I

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/places/zzja;->zzd(III)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwo:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwo:I

    iget v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwj:I

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwn:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwn:I

    add-int/2addr v0, v3

    goto :goto_1

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvk:[I

    iget v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwi:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/places/zziv;->zzwi:I

    iget v4, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    aput v4, v0, v2

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzww:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwx:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwy:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfp()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwt:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v1, Lcom/google/android/gms/internal/places/zzgt;->zzpx:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v1, Lcom/google/android/gms/internal/places/zzgt;->zzqf:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_8

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v1, Lcom/google/android/gms/internal/places/zzgt;->zzqa:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfm()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwx:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfm()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzww:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwa:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/places/zziv;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwv:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zziv;->zzft()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzvz:Lcom/google/android/gms/internal/places/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zziw;->next()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwu:I

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzpx:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzqf:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-ne v0, v2, :cond_c

    goto :goto_8

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzqp:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzrl:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-ne v0, v2, :cond_d

    goto :goto_5

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzqa:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-eq v0, v2, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzqs:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-eq v0, v2, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzrg:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-ne v0, v2, :cond_e

    goto :goto_7

    :cond_e
    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v2, Lcom/google/android/gms/internal/places/zzgt;->zzrm:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v2

    if-ne v0, v2, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfm()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwy:Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_12

    goto/16 :goto_4

    :cond_10
    :goto_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_4

    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwv:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_6

    :cond_12
    :goto_9
    return v3
.end method

.method final zzbg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwq:I

    return v0
.end method

.method final zzfn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    return v0
.end method

.method final zzfp()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v1, Lcom/google/android/gms/internal/places/zzgt;->zzrm:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzfq()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwt:I

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwa:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/places/zziv;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzfr()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwt:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwa:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/places/zziv;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzfs()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwv:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method final zzft()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zziv;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzws:I

    sget-object v1, Lcom/google/android/gms/internal/places/zzgt;->zzqf:Lcom/google/android/gms/internal/places/zzgt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzgt;->id()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzfu()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwc:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/places/zziv;->zzwu:I

    div-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzwa:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/places/zziv;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/places/zziv;->zzvb:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method final zzfv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwu:I

    rem-int/lit8 v0, v0, 0x20

    return v0
.end method

.method final zzfw()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzfx()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwr:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzfy()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzww:Ljava/lang/Object;

    return-object v0
.end method

.method final zzfz()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwx:Ljava/lang/Object;

    return-object v0
.end method

.method final zzga()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zziv;->zzwy:Ljava/lang/Object;

    return-object v0
.end method
