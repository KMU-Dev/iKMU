.class public Lcom/google/android/gms/internal/places/zzho;
.super Ljava/lang/Object;


# static fields
.field private static final zznj:Lcom/google/android/gms/internal/places/zzgl;


# instance fields
.field private zzuf:Lcom/google/android/gms/internal/places/zzfr;

.field private volatile zzug:Lcom/google/android/gms/internal/places/zzih;

.field private volatile zzuh:Lcom/google/android/gms/internal/places/zzfr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/places/zzgl;->zzda()Lcom/google/android/gms/internal/places/zzgl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/places/zzho;->zznj:Lcom/google/android/gms/internal/places/zzgl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    sget-object v0, Lcom/google/android/gms/internal/places/zzfr;->zznt:Lcom/google/android/gms/internal/places/zzfr;

    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;
    :try_end_1
    .catch Lcom/google/android/gms/internal/places/zzhh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    sget-object p1, Lcom/google/android/gms/internal/places/zzfr;->zznt:Lcom/google/android/gms/internal/places/zzfr;

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzho;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/places/zzho;

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    iget-object v1, p1, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzho;->zzax()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzho;->zzax()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/places/zzfr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzih;->zzds()Lcom/google/android/gms/internal/places/zzih;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/places/zzho;->zzi(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzih;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/places/zzih;->zzds()Lcom/google/android/gms/internal/places/zzih;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzho;->zzi(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzih;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzax()Lcom/google/android/gms/internal/places/zzfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/places/zzfr;->zznt:Lcom/google/android/gms/internal/places/zzfr;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzih;->zzax()Lcom/google/android/gms/internal/places/zzfr;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzdg()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzfr;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzih;->zzdg()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/places/zzih;)Lcom/google/android/gms/internal/places/zzih;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/places/zzho;->zzuf:Lcom/google/android/gms/internal/places/zzfr;

    iput-object v1, p0, Lcom/google/android/gms/internal/places/zzho;->zzuh:Lcom/google/android/gms/internal/places/zzfr;

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzho;->zzug:Lcom/google/android/gms/internal/places/zzih;

    return-object v0
.end method
