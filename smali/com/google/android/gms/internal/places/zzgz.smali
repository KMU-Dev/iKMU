.class public abstract Lcom/google/android/gms/internal/places/zzgz;
.super Lcom/google/android/gms/internal/places/zzfh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/places/zzgz$zzc;,
        Lcom/google/android/gms/internal/places/zzgz$zzg;,
        Lcom/google/android/gms/internal/places/zzgz$zzf;,
        Lcom/google/android/gms/internal/places/zzgz$zzd;,
        Lcom/google/android/gms/internal/places/zzgz$zze;,
        Lcom/google/android/gms/internal/places/zzgz$zzb;,
        Lcom/google/android/gms/internal/places/zzgz$zzh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/places/zzgz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/places/zzgz$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/places/zzfh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzsi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/places/zzgz<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzsg:Lcom/google/android/gms/internal/places/zzjr;

.field private zzsh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/places/zzgz;->zzsi:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzfh;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzjr;->zzgp()Lcom/google/android/gms/internal/places/zzjr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsg:Lcom/google/android/gms/internal/places/zzjr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zzhd;ILcom/google/android/gms/internal/places/zzke;Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zzgz$zzg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/places/zzih;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/android/gms/internal/places/zzih;",
            "Lcom/google/android/gms/internal/places/zzhd<",
            "*>;I",
            "Lcom/google/android/gms/internal/places/zzke;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/places/zzgz$zzg<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/places/zzgz$zzg;

    new-instance p4, Lcom/google/android/gms/internal/places/zzgz$zzf;

    const/4 v1, 0x0

    const v2, 0x4a35d11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/places/zzgz$zzf;-><init>(Lcom/google/android/gms/internal/places/zzhd;ILcom/google/android/gms/internal/places/zzke;ZZ)V

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/places/zzgz$zzg;-><init>(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzih;Lcom/google/android/gms/internal/places/zzgz$zzf;Ljava/lang/Class;)V

    return-object p3
.end method

.method static zzb(Lcom/google/android/gms/internal/places/zzgz;Lcom/google/android/gms/internal/places/zzga;Lcom/google/android/gms/internal/places/zzgl;)Lcom/google/android/gms/internal/places/zzgz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzgz<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/places/zzga;",
            "Lcom/google/android/gms/internal/places/zzgl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/places/zzhh;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsy:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/places/zzgz;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgd;->zzb(Lcom/google/android/gms/internal/places/zzga;)Lcom/google/android/gms/internal/places/zzgd;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzix;Lcom/google/android/gms/internal/places/zzgl;)V

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/places/zziy;->zzd(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/places/zzhh;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/places/zzhh;

    throw p0

    :cond_0
    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/places/zzhh;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/places/zzhh;

    throw p0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/places/zzhh;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/places/zzhh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/places/zzhh;->zzh(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzhh;

    move-result-object p0

    throw p0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/places/zziu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/places/zziu;-><init>(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zzb(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/places/zzgz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzgz<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/places/zzgz;->zzsi:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zzb(Lcom/google/android/gms/internal/places/zzgz;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzgz<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget p1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsv:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/places/zziy;->zzo(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static zzdo()Lcom/google/android/gms/internal/places/zzhe;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzha;->zzdy()Lcom/google/android/gms/internal/places/zzha;

    move-result-object v0

    return-object v0
.end method

.method protected static zzdp()Lcom/google/android/gms/internal/places/zzhg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/places/zzhg<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/places/zzit;->zzfd()Lcom/google/android/gms/internal/places/zzit;

    move-result-object v0

    return-object v0
.end method

.method static zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zzgz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/places/zzgz<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/places/zzgz;->zzsi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/places/zzgz;->zzsi:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzta:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/places/zzgz;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/places/zziy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zznh:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zznh:I

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/places/zziy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zznh:I

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zznh:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsv:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/places/zziy;->zzo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsw:I

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/places/zzik;->zzb(Lcom/google/android/gms/internal/places/zzih;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzay()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    return v0
.end method

.method protected abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzc(Lcom/google/android/gms/internal/places/zzgf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/places/zzis;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgh;->zzb(Lcom/google/android/gms/internal/places/zzgf;)Lcom/google/android/gms/internal/places/zzgh;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/places/zziy;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/places/zzkk;)V

    return-void
.end method

.method public final zzdg()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/places/zzis;->zzfc()Lcom/google/android/gms/internal/places/zzis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzis;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/places/zziy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/places/zziy;->zzn(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    return v0
.end method

.method public final synthetic zzdq()Lcom/google/android/gms/internal/places/zzii;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zzb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/places/zzgz$zzb;->zzb(Lcom/google/android/gms/internal/places/zzgz;)Lcom/google/android/gms/internal/places/zzgz$zzb;

    return-object v0
.end method

.method public final synthetic zzdr()Lcom/google/android/gms/internal/places/zzii;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzsz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz$zzb;

    return-object v0
.end method

.method public final synthetic zzds()Lcom/google/android/gms/internal/places/zzih;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/places/zzgz$zzh;->zzta:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/places/zzgz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/places/zzgz;

    return-object v0
.end method

.method final zzv(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/places/zzgz;->zzsh:I

    return-void
.end method
