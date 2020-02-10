.class final Lcom/google/android/gms/internal/places/zzfw;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zznz:Lcom/google/android/gms/internal/places/zzgf;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzfw;->buffer:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/places/zzfw;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzgf;->zzd([B)Lcom/google/android/gms/internal/places/zzgf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzfw;->zznz:Lcom/google/android/gms/internal/places/zzgf;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/places/zzfs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzfw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzch()Lcom/google/android/gms/internal/places/zzfr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzfw;->zznz:Lcom/google/android/gms/internal/places/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzgf;->zzcs()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/places/zzfy;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzfw;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzfy;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzci()Lcom/google/android/gms/internal/places/zzgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzfw;->zznz:Lcom/google/android/gms/internal/places/zzgf;

    return-object v0
.end method
